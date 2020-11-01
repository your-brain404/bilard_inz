<template>
	<v-container class="py-12 reservations">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Rezerwacja</h2>
		</v-row>
		<v-row>
			<v-form ref="form" v-model="valid" lazy-validation>
				<v-text-field :rules="[rules.required]" label="Imię i nazwisko" v-model="name"></v-text-field>
				<v-select :rules="[rules.required]" label="Usługa" :items="services" item-text="title" v-model="service"></v-select>
				<v-select :rules="[rules.required]" v-if="service != ''" item-text="title" label="Wybierz miejsce" v-model="service_equipment" :items="service_equipments.filter(eq => eq.service.title == service)"></v-select>

				<v-menu ref="date_menu" v-model="date_menu" :close-on-content-click="false"  transition="scale-transition" offset-y min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-combobox :rules="[rules.required]" v-model="date" label="Data" prepend-icon="mdi-calendar" readonly v-bind="attrs" v-on="on" ></v-combobox>
					</template>
					<v-date-picker v-model="date" no-title >
						
					</v-date-picker>
				</v-menu>

				<v-menu ref="start_time" :disabled="date == '' || service == ''" v-model="start_time_menu" :close-on-content-click="false" :nudge-right="40" transition="scale-transition" offset-y max-width="290px" min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-text-field :disabled="date == '' || service == ''" v-model="start_time" :rules="[rules.required]" label="Picker in menu" prepend-icon="mdi-clock-time-four-outline" readonly v-bind="attrs" v-on="on" ></v-text-field>
					</template>
					<v-time-picker  format="24hr" min="17:00" v-if="start_time_menu" v-model="start_time" full-width @click:minute="$refs.start_time.save(start_time)" ></v-time-picker>
				</v-menu>

				<v-menu ref="end_time" :disabled="date == '' || service == ''" v-model="end_time_menu" :close-on-content-click="false" :nudge-right="40" transition="scale-transition" offset-y max-width="290px" min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-text-field :disabled="date == '' || service == ''" v-model="end_time" :rules="[rules.required, getValidTime]" label="Picker in menu" prepend-icon="mdi-clock-time-four-outline" readonly v-bind="attrs" v-on="on" ></v-text-field>
					</template>
					<v-time-picker  format="24hr" min="17:00" v-if="end_time_menu" v-model="end_time" full-width @click:minute="$refs.end_time.save(end_time)" ></v-time-picker>
				</v-menu>
				<v-btn @click="$refs.form.validate()">Wyślij</v-btn>
			</v-form>
		</v-row>
		<v-row justify="center">
			<Calendar @events="events = $event" />
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import Calendar from '../reservations/Calendar'

	export default {
		data() {
			return {
				valid: true,
				events: [],
				service_equipments: [],
				service_equipment: 'Stół bilardowy nr 1',
				services: [],
				date_menu: false,
				date: '2020-11-01',
				service: 'Bilard',
				name: '',
				start_time_menu: false,
				start_time: '17:00',
				end_time_menu: false,
				end_time: '18:00',
				rules: {
					required: v => !!v || 'To pole jest wymagane!'
				}
			}
		},
		components: {
			Calendar
		},
		methods: {
			formatNumber: num => num.toString().length == 1 ? '0' + num : num,
			formatTime(time){
				return this.formatNumber(new Date(time).getHours()) + ':' + this.formatNumber(new Date(time).getMinutes())
			} ,
			formatDate(date) { 
				return new Date(date).getFullYear() + '-' + (new Date(date).getMonth() + 1) + '-' + this.formatNumber(new Date(date).getDate());
			},
			checkInterval(e) {
				let result = true;
				if(e.name == this.service_equipment) result = (this.start_time >= this.formatTime(e.start) && this.start_time < this.formatTime(e.end) ) || (this.end_time > this.formatTime(e.start) && this.end_time <= this.formatTime(e.end));
				console.log(!result, this.start_time, this.end_time, 'stare ->', this.formatTime(e.start), this.formatTime(e.end))
				return !result;
			},
			getValidTime(v) {
				let events = this.events.filter(e => this.formatDate(e.start) == this.date);
				let arriba = [];
				events.forEach(e => arriba.push(this.checkInterval(e)));
				return !arriba.some(e => e) || 'Taka rezerwacja już istnieje!';
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
		},
		created() {
			this.getServiceEquipments();
			this.getServices();

		},
	}
</script>