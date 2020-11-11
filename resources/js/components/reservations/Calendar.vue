<template>
	<v-container class="px-3">
		<h2>Legenda</h2>
		<v-row v-for="(service, i) in services" :key="i" align="center" class="px-3">
			<div class="legend-color" :style="`background-color: ${service.color}`"></div>
			<p>{{ service.title }}</p>

		</v-row>
		<v-row align="center" class="px-3 mb-4">
			<div class="legend-color" style="background-color: rgb(197 197 197)"></div>
			<p>Niepotwierdzona rezerwacja</p>

		</v-row>
		<v-sheet tile height="54" class="d-flex" >
			<v-btn icon class="ma-2" @click="$refs.calendar.prev()" >
				<v-icon>mdi-chevron-left</v-icon>
			</v-btn>
			<v-select v-model="show_type" :items="show_types" dense outlined hide-details class="ma-2" label="Typ" ></v-select>

			<v-select v-model="weekday" :items="weekdays" dense outlined hide-details label="Format dni" class="ma-2" ></v-select>
			<v-btn icon class="ma-2" @click="$refs.calendar.next()" >
				<v-icon>mdi-chevron-right</v-icon>
			</v-btn>
		</v-sheet>
		<v-sheet height="600" width="100%">
			<v-calendar ref="calendar" v-model="value" :weekdays="weekday" :type="type" :events="events" :event-overlap-mode="mode" :event-overlap-threshold="30" :event-color="getEventColor" @change="getEvents" @click:date="viewDay" @click:more="viewDay" @click:event="showEvent" locale="pl" event-more-text="Pokaż więcej"></v-calendar>

			<v-menu v-model="selectedOpen" :close-on-content-click="false" :activator="selectedElement" offset-x >
				<v-card color="grey lighten-4" min-width="350px" flat >
					<v-toolbar :color="selectedEvent.color" dark >
						<v-btn icon>
							<v-icon>mdi-pencil</v-icon>
						</v-btn>
						<v-toolbar-title v-html="selectedEvent.name + '<br>' + getReservationTime(selectedEvent)"></v-toolbar-title>
						<v-spacer></v-spacer>

					</v-toolbar>


				</v-card>
			</v-menu>
		</v-sheet>
	</v-container>
</template>

<script>
	import DateFormatter from '../../helpers/date/format.js'
	import axios from 'axios'

	export default {
		props: ['service_equipments', 'deleteFlag', 'services', 'reloadFlag'],
		data: () => ({
			type: 'week',
			show_type: 'tydzień',
			types: ['month', 'week', 'day', '4day'],
			show_types: ['miesiąc', 'tydzień', 'dzień', '4 dni'],
			weekday: [1, 2, 3, 4, 5, 6, 0],
			weekdays: [
			{ text: 'Ndz - Sob', value: [0, 1, 2, 3, 4, 5, 6] },
			{ text: 'Pn - Ndz', value: [1, 2, 3, 4, 5, 6, 0] },
			{ text: 'Pn - Pt', value: [1, 2, 3, 4, 5] },
			{ text: 'Pn, Śr, Pt', value: [1, 3, 5] },
			],
			value: '',
			events: [],
			focus: '',
			selectedEvent: {},
			selectedElement: null,
			selectedOpen: false,
		}),
		watch: {
			show_type() {
				this.type = this.types[this.show_types.indexOf(this.show_type)];
			},
			deleteFlag(){
				if(this.deleteFlag){
					this.getEvents();
				}
			},
			reloadFlag(){
				if(this.reloadFlag){
					this.getEvents();
				}
			}
		},
		methods: {
			getReservationTime(selectedEvent) {
				return `${DateFormatter.formatTime(selectedEvent.start)}-${DateFormatter.formatTime(selectedEvent.end)}`;
			},
			showEvent ({ nativeEvent, event }) {
				const open = () => {
					this.selectedEvent = event
					this.selectedElement = nativeEvent.target
					setTimeout(() => {
						this.selectedOpen = true
					}, 10)
				}

				if (this.selectedOpen) {
					this.selectedOpen = false
					setTimeout(open, 10)
				} else {
					open()
				}

				nativeEvent.stopPropagation()
			},
			viewDay ({ date }) {
				this.focus = date
				this.type = 'day'
			},
			async getEvents () {
				const events = []

				await axios.get('/api/reservations/get_all').then(res => {
					for(let data of res.data) {
						events.push({
							name: this.service_equipments.find(eq => eq.id == data.service_equipment_id).title,
							start: data.entry,
							end: data.leave,
							color: data.active ? this.service_equipments.find(eq => eq.id == data.service_equipment_id).service.color : 'rgb(197 197 197)',
							timed: true

						})
					}
					this.$emit('blockDataEmit', res.data)
					this.events = events
					this.$emit('events', events.sort((a,b) => a.created_at > b.created_at ? 1 : (a.created_at < b.created_at ? 0 : -1)));
				}).catch(err => console.log(err))
			},
			getEventColor (event) {
				return event.color
			},


		},
	}
</script>

<style>
	.legend-color {
		width: 30px;
		height: 15px;
		border: 1px solid black;

	}
	.legend-color + p {
		margin-bottom: 0!important;
		margin-left: 1rem;
	}
</style>