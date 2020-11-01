<template>
	<v-container class="py-12 reservations">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Rezerwacja</h2>
		</v-row>
		<v-row>
			<v-form ref="form" v-model="valid" lazy-validation>
				<v-text-field label="Imię i nazwisko" v-model="name"></v-text-field>
				<v-select label="Usługa" :items="services" item-text="title" v-model="service"></v-select>

				<v-menu ref="date_menu" v-model="date_menu" :close-on-content-click="false"  transition="scale-transition" offset-y min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-combobox v-model="date" label="Data" prepend-icon="mdi-calendar" readonly v-bind="attrs" v-on="on" ></v-combobox>
					</template>
					<v-date-picker v-model="date" no-title >
						
					</v-date-picker>
				</v-menu>

				<v-menu ref="start_time" :disabled="date == ''" v-model="start_time_menu" :close-on-content-click="false" :nudge-right="40" transition="scale-transition" offset-y max-width="290px" min-width="290px" >
					<template v-slot:activator="{ on, attrs }">
						<v-text-field :disabled="date == ''" v-model="start_time" :rules="[rules.required, getValidTime]" label="Picker in menu" prepend-icon="mdi-clock-time-four-outline" readonly v-bind="attrs" v-on="on" ></v-text-field>
					</template>
					<v-time-picker  format="24hr" min="17:00" v-if="start_time_menu" v-model="start_time" full-width @click:minute="$refs.start_time.save(start_time)" ></v-time-picker>
				</v-menu>
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
				services: [],
				date_menu: false,
				date: '2020-11-01',
				service: '',
				name: '',
				start_time_menu: false,
				start_time: null,
				rules: {
					required: v => !!v || 'To pole jest wymagane!'
				}
			}
		},
		components: {
			Calendar
		},
		watch: {
			events() {
				let events = this.events.filter(e => this.formatDate(e.start) == this.date);
				// console.log(events.some(e => this.formatTime(e.start)))
				
				console.log('18:00' > '17:59')
			}
		},
		methods: {
			formatDay: day => day.toString().length == 1 ? '0' + day : day,
			formatDate(date) { 
				return new Date(date).getFullYear() + '-' + (new Date(date).getMonth() + 1) + '-' + this.formatDay(new Date(date).getDate());
			},
			getValidTime(v) {
				let events = this.events.filter(e => this.formatDate(e.start) == this.date);
				return !!v;
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