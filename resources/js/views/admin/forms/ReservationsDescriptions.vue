<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Rezerwacja opisy {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						<v-col class="" cols="12">
							<div class="pa-5">
								<v-text-field color="primary" :rules="rules.titleRules" v-model="currentObject.title" label="Tytuł *"></v-text-field>
								<v-text-field color="primary" v-model="currentObject.name" label="Imię i nazwisko"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.email" label="Adres e-mail"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.phone" label="Telefon"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.service" label="Usługa"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.service_equipment" label="Wybierz miejsce"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.date" label="Data"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.date_icon" label="Ikona daty"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.entry" label="Godzina rozpoczęcia"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.entry_icon" label="Ikona godziny rozpoczęcia"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.leave" label="Godzina zakończenia"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.leave_icon" label="Ikona godziny zakończenia"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.button_name" label="Napis na przycisku"></v-text-field>
							</div>
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
					show: '',
					hide: '',
					send: '',
					delete: '',
					button_icon: '',
					write: '',
					question: '',
				},
			}
		},
		...vueComponents
	}
</script>