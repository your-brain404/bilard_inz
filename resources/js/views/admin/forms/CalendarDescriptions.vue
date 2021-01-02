<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Kalendarz opisy {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="12" lg="6">
							<div class="pa-5">
								<v-text-field color="primary"  v-model="currentObject.title" :rules="rules.titleRules" label="Tytuł *" required></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.legend" label="Legenda"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.unconfirmed" label="Niepotwierdzona rezerwacja"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.unconfirmed_color" label="Kolor niepotwierdzonej rezerwacji"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.type" label="Typ"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.day_format" label="Format dni"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.month" label="Miesiąc"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.week" label="Tydzień"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.day" label="Dzień"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.four_days" label="4 Dni"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.next_icon" label="Ikona następnego dnia"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.previous_icon" label="Ikona poprzedniego dnia"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.reservation_icon" label="Ikona rezerwacji"></v-text-field>
								
							</div>
						</v-col>

						

						<v-col cols="12" lg="6" >
							<v-text-field  color="primary" v-model="currentObject.monday" label="pon."></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.tuesday" label="wt."></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.wednesday" label="śr."></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.thursday" label="czw."></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.friday" label="pt."></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.saturday" label="sob."></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.sunday" label="niedz."></v-text-field>
						</v-col>

					</v-row>
					<v-divider class="mb-0"></v-divider>
					<v-card-actions class="pa-4">
						<v-btn :disabled=" !valid || currentObject.title == '' " color="success" class="mr-2" @click="validate" >
							<v-icon left>mdi-check</v-icon>
							<span>Zatwierdź</span>
						</v-btn>

						<v-btn color="error" class="mr-2" @click="$router.go(-1)" >
							<v-icon left>mdi-close</v-icon>
							<span>Anuluj</span>
						</v-btn>
					</v-card-actions>
				</v-form>
			</v-card>
			
		</v-container>
	</v-content>
</template>

<script>
	import FormService from '../../../services/FormService.js'
	let data = {};
	let vueComponents = {};
	
	Object.entries(FormService).forEach(form => form[0] != 'data' ? vueComponents[form[0]] = form[1] : data = form[1] )
	
	export default {
		data() {
			return {
				...data,
				currentObject:{
					title: '',
					subtitle: '',
					phone: '',
					email: '',
					name: '',
					phone_icon: '',
					email_icon: '',
					map_icon: '',
					account_icon: '',
					file_icon: '',
					subject: '',
					message: '',
					find_us: '',
					files: '',
					button_name: '',
				},
			}
		},
		...vueComponents,
	}
</script>