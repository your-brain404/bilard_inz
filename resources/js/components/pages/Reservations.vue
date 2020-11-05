<template>
	<v-container class="py-12 reservations">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Rezerwacja</h2>
		</v-row>
		<v-row>
			<v-form ref="form" v-model="valid" lazy-validation>
				<v-text-field :rules="[rules.required]" label="Imię i nazwisko" v-model="name"></v-text-field>
				<v-select :rules="[rules.required]" label="Usługa" :items="services" item-text="title" v-model="service"></v-select>
				<v-select :rules="[rules.required, checkReservation]" v-if="service != ''" item-text="title" label="Wybierz miejsce" v-model="service_equipment" :items="service_equipments.filter(eq => eq.service.title == service)"></v-select>

				<v-menu ref="date_menu" v-model="date_menu" :close-on-content-click="false"  transition="scale-transition" offset-y min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-combobox :rules="[rules.required]" v-model="date" label="Data" prepend-icon="mdi-calendar" readonly v-bind="attrs" v-on="on" ></v-combobox>
					</template>
					<v-date-picker v-model="date" no-title :min="formatDate(new Date())">
						
					</v-date-picker>
				</v-menu>

				<v-menu ref="start_time" :disabled="date == '' || service == ''" v-model="start_time_menu" :close-on-content-click="false" :nudge-right="40" transition="scale-transition" offset-y max-width="290px" min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-text-field :disabled="date == '' || service == ''" v-model="start_time" :rules="[rules.required]" label="Godzina rozpoczęcia" prepend-icon="mdi-clock-time-four-outline" readonly v-bind="attrs" v-on="on" ></v-text-field>
					</template>
					<v-time-picker  format="24hr" min="17:00" v-if="start_time_menu" v-model="start_time" full-width @click:minute="$refs.start_time.save(start_time)" ></v-time-picker>
				</v-menu>

				<v-menu ref="end_time" :disabled="date == '' || service == ''" v-model="end_time_menu" :close-on-content-click="false" :nudge-right="40" transition="scale-transition" offset-y max-width="290px" min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-text-field :disabled="date == '' || service == ''" v-model="end_time" :rules="[rules.required, checkInterval]" label="Godzina zakończenia" prepend-icon="mdi-clock-time-four-outline" readonly v-bind="attrs" v-on="on" ></v-text-field>
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
				service_equipment: '',
				services: [],
				date_menu: false,
				date: '',
				service: '',
				name: '',
				start_time_menu: false,
				start_time: '',
				end_time_menu: false,
				end_time: '',
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
			getSeconds(time) {
				return (parseInt(time.substr(0,2)) * 3600) + (parseInt(time.substr(3,2)) * 60);
			},
			checkInterval(v) {
				return this.getSeconds(v) - this.getSeconds(this.start_time) >= 1800 || 'Minimalny czas rezerwacji to 30 minut!';
			},
			checkReservationTimes(e) {
				let result = false;
				if(e.name != this.service_equipment) return true;

				if(this.start_time < this.formatTime(e.start)) {
					result = this.end_time <= this.formatTime(e.start);
				} else if(this.start_time >= this.formatTime(e.end)) {
					result = true;
				} 
				
				return result;
			},
			setReservationError(results) {
				return results.map((result, i) => !result ? `(${this.formatTime(this.events[i].start)} - ${this.formatTime(this.events[i].end)})` : '').join(' ');
			},
			checkReservation(v) {
				let events = this.events.filter(e => this.formatDate(e.start) == this.date);
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
		},
		created() {
			this.getServiceEquipments();
			this.getServices();
		},
	}
</script>