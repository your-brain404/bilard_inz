<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Kontakt opisy {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="6">
							<div class="pa-5">
								<v-text-field color="primary"  v-model="currentObject.title" :rules="rules.titleRules" label="Tytuł *" required></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.subtitle" label="Podtytuł"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.file_icon" label="Ikona pliku"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.phone_icon" label="Ikona telefonu"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.email_icon" label="Ikona emaila"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.map_icon" label="Ikona adresu"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.account_icon" label="Ikona właściciela"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.find_us" label="Tekst nad mapą"></v-text-field>
								
							</div>
						</v-col>

						<v-col cols="6" >
							<v-text-field  color="primary" v-model="currentObject.name" label="Imię i nazwisko"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.email" label="Adres e-mail"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.phone" label="Numer telefonu"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.subject" label="Temat"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.message" label="Wiadomość"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.files" label="Pliki (opcjonalnie)"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.button_name" label="Napis na przycisku"></v-text-field>
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
		...vueComponents
	}
</script>