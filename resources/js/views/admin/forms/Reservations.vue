<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Rezerwacja 
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						<v-col class="" cols="12">
							<div class="pa-5">
								<v-text-field class="readonly" color="primary" readonly v-model="currentObject.name" :rules="rules.titleRules" label="Imię i nazwisko" required></v-text-field>
								<v-text-field class="readonly" readonly color="primary" v-model="currentObject.email" label="Adres E-mail"></v-text-field>
								<v-text-field class="readonly" readonly color="primary" v-model="currentObject.phone" label="Numer Telefonu"></v-text-field>
								<v-text-field class="readonly" readonly color="primary" v-model="currentObject.entry" label="Wejście"></v-text-field>
								<v-text-field class="readonly" readonly color="primary" v-model="currentObject.leave" label="Wyjście"></v-text-field>
								<v-text-field class="readonly" readonly color="primary" v-model="currentObject.service_equipment.title" label="Usługa"></v-text-field>
								<v-checkbox class="readonly" readonly v-model="currentObject.rodo1" label="Zgoda na przetwarzanie danych"></v-checkbox>
								<v-checkbox class="readonly" readonly v-model="currentObject.rodo2" label="Zgoda na kontakt telefoniczny lub mailowy"></v-checkbox>
								<div class="mt-3">
									<p class="mb-1">Notatka</p>
									<vue-editor v-model="currentObject.earnings"></vue-editor>
								</div>
								
							</div>
						</v-col>
					</v-row>
					<v-divider class="mb-0"></v-divider>
					<v-card-actions class="pa-4">
						<v-btn :disabled="!valid" color="success" class="mr-2" @click="validate" >
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
					name: '',
					email: '',
					phone: '',
					entry: '',
					leave: '',
					earnings: '',
					service_equipment: '',
					rodo1: 0,
					rodo2: 0,
				},
			}
		},
		...vueComponents
	}
</script>

<style>
	.readonly, .readonly .v-label, .readonly .v-label+input, .readonly .v-input--selection-controls__ripple {
		cursor: not-allowed!important;
	}
</style>