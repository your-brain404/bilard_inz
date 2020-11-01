<template>
	<div class="w-100">
		<v-sheet
		tile
		height="54"
		class="d-flex"
		>
		<v-btn
		icon
		class="ma-2"
		@click="$refs.calendar.prev()"
		>
		<v-icon>mdi-chevron-left</v-icon>
	</v-btn>
	<v-select
	v-model="show_type"
	:items="show_types"
	dense
	outlined
	hide-details
	class="ma-2"
	label="Typ"
	></v-select>

	<v-select
	v-model="weekday"
	:items="weekdays"
	dense
	outlined
	hide-details
	label="Format dni"
	class="ma-2"
	></v-select>
	<v-btn
	icon
	class="ma-2"
	@click="$refs.calendar.next()"
	>
	<v-icon>mdi-chevron-right</v-icon>
</v-btn>
</v-sheet>
<v-sheet height="600" width="100%">
	<v-calendar
	ref="calendar"
	v-model="value"
	:weekdays="weekday"
	:type="type"
	:events="events"
	:event-overlap-mode="mode"
	:event-overlap-threshold="30"
	:event-color="getEventColor"
	@change="getEvents"
	@click:date="viewDay"
	@click:more="viewDay"
	@click:event="showEvent"
	locale="pl"
	></v-calendar>

	<v-menu
          v-model="selectedOpen"
          :close-on-content-click="false"
          :activator="selectedElement"
          offset-x
        >
          <v-card
            color="grey lighten-4"
            min-width="350px"
            flat
          >
            <v-toolbar
              :color="selectedEvent.color"
              dark
            >
              <v-btn icon>
                <v-icon>mdi-pencil</v-icon>
              </v-btn>
              <v-toolbar-title v-html="selectedEvent.name + '<br>' + getReservationTime(selectedEvent)"></v-toolbar-title>
              <v-spacer></v-spacer>
             
            </v-toolbar>
            
            
          </v-card>
        </v-menu>
</v-sheet>
</div>
</template>

<script>
	export default {
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
		},
		methods: {
			getReservationTime(selectedEvent) {
				return new Date(selectedEvent.start).getHours() + '-' + new Date(selectedEvent.end).getHours();
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
			getEvents ({ start, end }) {
				const events = []

				events.push({
					name: 'Stół bilardowy nr 1',
					start: '2020-11-01 17:30',
					end: '2020-11-01 18:00',
					color: '#19881d',
					timed: true,
				}, {
					name: 'Stół bilardowy nr 1',
					start: '2020-11-01 19:30',
					end: '2020-11-01 20:00',
					color: '#19881d',
					timed: true,
				},
				{
					name: 'Stół bilardowy nr 3',
					start: '2020-11-02 17:30',
					end: '2020-11-02 18:00',
					color: '#19881d',
					timed: true,
				})
				this.events = events
				this.$emit('events', events);
			},
			getEventColor (event) {
				return event.color
			},

		},
	}
</script>