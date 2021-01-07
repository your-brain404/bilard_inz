<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Menu opisy {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="8">
							<div class="pa-5">
								<v-text-field  color="primary" v-model="currentObject.panel" label="Panel administracyjny napis"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.panel_icon" label="Ikona panelu administracyjnego"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.login" label="Logowanie napis"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.login_icon" label="Ikona logowania"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.account" label="Konto napis"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.account_icon" label="Ikona konta"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.accept" label="Akceptuj"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.cancel" label="Anuluj"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.log_out" label="Wyloguj"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.name" label="Imię i nazwisko"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.photo_text" label="Zdjęcie"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.delete_photo" label="Usuń Zdjęcie"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.edit_account" label="Edytuj konto"></v-text-field>
								
							</div>
						</v-col>

						<v-col cols="4" >
							<div class="pa-5 d-flex flex-column justify-content-between">
								<div>
									<v-img :src="currentObject.placeholder ? getUrl(currentObject.placeholder) : getImageDefaultPlaceholder()" :alt="currentObject.placeholder_alt"></v-img>
									<ImagePicker title="Placeholder" @updateDeletedPhoto="updateDeletedPhoto" :activePhotoPath="currentObject.placeholder" @loadedImage="currentObject.placeholder = $event" :img="currentObject.placeholder"/>
								</div>
								
								<v-text-field color="primary"  v-model="currentObject.placeholder_alt" label="Tekst alternatywny placeholdera"></v-text-field>
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
				currentObject: {},
			}
		},
		...vueComponents
	}
</script>