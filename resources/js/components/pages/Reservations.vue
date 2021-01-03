<template>
	<v-container class="py-12 reservations">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ reservations_descriptions.title }}</h2>
		</v-row>
		<v-row justify="center">
			<v-col cols="12" lg="8">
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-text-field :rules="[rules.required]" :label="reservations_descriptions.name" v-model="reservation.name"></v-text-field>
					<v-text-field :rules="[rules.required, rules.email]" :label="reservations_descriptions.email" v-model="reservation.email"></v-text-field>
					<v-text-field :rules="[rules.required]" :label="reservations_descriptions.phone" v-model="reservation.phone"></v-text-field>
					<v-select :rules="[rules.required]" :label="reservations_descriptions.service" :items="services" item-text="title" v-model="service"></v-select>
					<v-select :rules="[rules.required, checkReservation]" v-if="service != ''" item-text="title" :label="reservations_descriptions.service_equipment" v-model="service_equipment" :items="service_equipments.filter(eq => eq.service.title == service)"></v-select>

					<v-menu ref="date_menu" v-model="date_menu" :close-on-content-click="false"  transition="scale-transition" offset-y min-width="290px" >
						<template v-slot:activator="{ on, attrs }">
							<v-combobox :rules="[rules.required]" v-model="date" :label="reservations_descriptions.date" :prepend-icon="`mdi-${reservations_descriptions.date_icon}`" readonly v-bind="attrs" v-on="on" ></v-combobox>
						</template>
						<v-date-picker v-model="date" no-title :min="formatDate(new Date())">

						</v-date-picker>
					</v-menu>

					<v-menu ref="entry" :disabled="date == '' || service == ''" v-model="entry_menu" :close-on-content-click="false" :nudge-right="40" transition="scale-transition" offset-y max-width="290px" min-width="290px" >
						<template v-slot:activator="{ on, attrs }">
							<v-text-field :disabled="date == '' || service == ''" v-model="reservation.entry" :rules="[rules.required]" :label="reservations_descriptions.entry" :prepend-icon="`mdi-${reservations_descriptions.entry_icon}`" readonly v-bind="attrs" v-on="on" ></v-text-field>
						</template>
						<v-time-picker  format="24hr" min="17:00" v-if="entry_menu" v-model="reservation.entry" full-width @click:minute="$refs.entry.save(reservation.entry)" ></v-time-picker>
					</v-menu>

					<v-menu ref="leave" :disabled="date == '' || service == ''" v-model="leave_menu" :close-on-content-click="false" :nudge-right="40" transition="scale-transition" offset-y max-width="290px" min-width="290px" >
						<template v-slot:activator="{ on, attrs }">
							<v-text-field :disabled="date == '' || service == ''" v-model="reservation.leave" :rules="[rules.required, checkInterval]" :label="reservations_descriptions.leave" :prepend-icon="`mdi-${reservations_descriptions.leave_icon}`" readonly v-bind="attrs" v-on="on" ></v-text-field>
						</template>
						<v-time-picker  format="24hr" min="17:00" v-if="leave_menu" v-model="reservation.leave" full-width @click:minute="$refs.leave.save(reservation.leave)" ></v-time-picker>
					</v-menu>

					<v-checkbox :rules="[rules.required]" @change="reservation.rodo1 ? reservation.rodo1 = 1 : reservation.rodo1 = 0" color="primary" class="mt-10" v-model="reservation.rodo1">
						<div slot="label" v-html="$store.getters.settings.rodo_1"></div>
					</v-checkbox>
					<v-checkbox :rules="[rules.required]" @change="reservation.rodo2 ? reservation.rodo2 = 1 : reservation.rodo2 = 0" color="primary" class="mt-0 mb-5" v-model="reservation.rodo2">
						<div slot="label" v-html="$store.getters.settings.rodo_2"></div>
					</v-checkbox>


					<v-btn outlined color="primary" @click="reserve">{{ reservations_descriptions.button_name }}</v-btn>
				</v-form>
			</v-col>
		</v-row>
		
		<v-row justify="center">
			<Calendar :reloadFlag="reloadFlag" :services="services" :deleteFlag="deleteFlag" @events="events = $event" @blockDataEmit="$emit('blockDataEmit', $event)" :service_equipments="service_equipments"/>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import Calendar from '../reservations/Calendar'
	import DateFormatter from '../../helpers/date/format.js'

	export default {
		props: ['deleteFlag', 'reloadFlag'],
		data() {
			return {
				valid: true,
				reloadFlag: false,
				events: [],
				service_equipments: [],
				service_equipment: '',
				services: [],
				date_menu: false,
				service: '',
				entry_menu: false,
				leave_menu: false,
				date: '',
				reservation: {
					name: '',
					entry: '',
					leave: '',
					phone: '',
					email: '',
					service_equipment_id: 0,
					rodo1: 0,
					rodo2: 0,
				},
				reservations_descriptions: {},
				rules: {
					required: v => !!v || 'To pole jest wymagane!',
					email: value => {
						const pattern = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
						return pattern.test(value) || 'Niepoprawny e-mail.'
					},
				}
			}
		},
		components: {
			Calendar
		},
		methods: {
			getReservationsDescriptions() {
				axios.get('/api/reservations_descriptions/get_one/1').then(res => this.reservations_descriptions = res.data);
			},
			formatDate: date => DateFormatter.formatDate(date),
			checkInterval(v) {
				return DateFormatter.getSeconds(v) - DateFormatter.getSeconds(this.reservation.entry) >= 1800 || 'Minimalny czas rezerwacji to 30 minut!';
			},
			checkReservationTimes(e) {
				let result = false;
				if(e.name != this.service_equipment) return true;

				if(this.reservation.entry < DateFormatter.formatTime(e.start)) {
					result = this.reservation.leave <= DateFormatter.formatTime(e.start);
				} else if(this.reservation.entry >= DateFormatter.formatTime(e.end)) {
					result = true;
				} 
				
				return result;
			},
			setReservationError(results) {
				return results.map((result, i) => !result ? `(${DateFormatter.formatTime(this.events[i].start)} - ${DateFormatter.formatTime(this.events[i].end)})` : '').join(' ');
			},
			checkReservation(v) {
				let events = this.events.filter(e => DateFormatter.formatDate(e.start) == this.date);
				let results = [];
				events.forEach(e => results.push(this.checkReservationTimes(e)));
				let error = this.setReservationError(results);
				return !results.some(e => !e) || `Taka rezerwacja już istnieje! ${error}`;
			},
			getServiceEquipments(){
				this.$store.commit('loading', true);
				axios.get(`/api/service_equipments/get_where?active=1`).then(res => {
					this.$store.commit('loading', false);
					this.service_equipments = res.data;
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getServices() {
				this.$store.commit('loading', true);
				axios.get(`/api/services/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.services = res.data;
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			setReservationDateTime() {
				this.reservation.entry = `${this.date} ${this.reservation.entry}`;
				this.reservation.leave = `${this.date} ${this.reservation.leave}`;
			},
			resetForm() {
				this.reservation = {
					name: '',
					entry: '',
					leave: '',
					phone: '',
					email: '',
					service_equipment_id: 0,
					rodo1: 0,
					rodo2: 0,
				};
				this.service_equipment = '';
				this.service = '';
				this.date = '';
				this.$refs.form.resetValidation();
			},
			async reserve(){
				if(!this.$refs.form.validate()) return;

				this.setReservationDateTime();

				this.$store.commit('loading', true);
				const response = await this.$recaptcha('login')
				if(!response) {
					this.$store.commit('setSnackbar', 'System twierdzi, że jesteś robotem...');
					return;
				}
				axios.post('/api/reservations/add', {...this.reservation, response}).then(res => {
					if(res.data.error != undefined) {
						this.$store.commit('setSnackbar', res.data.error.message);
						this.$store.commit('loading', false);
						return;
					}
					this.$store.commit('loading', false);
					this.$store.commit('setSnackbar', 'Twoja rezerwacja czeka na akceptację!'
						);
					this.resetForm();
					this.reloadFlag = true;
					setTimeout(() => {this.reloadFlag = false}, 200);
				}).catch(err => {
					this.$store.commit('loading', false);
					this.$store.commit('setSnackbar', 'Przepraszamy, usługa chwilowo nieaktywna...');
				})
			},
			setUserData() {
				if(this.$store.getters.user) {
					this.reservation.name = this.$store.getters.user.name;
					this.reservation.email = this.$store.getters.user.email;
				}
			}
		},
		watch: {
			service_equipment() {
				if(this.service_equipment != '') this.reservation.service_equipment_id = this.service_equipments.find(eq => eq.title == this.service_equipment).id;
			},
			
		},
		created() {
			this.getServiceEquipments();
			this.getServices();
			this.setUserData();
			this.getReservationsDescriptions();
		},
	}
</script>