<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Logowanie i rejestracja opisy {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="8">
							<div class="pa-5">
								<v-text-field  color="primary" v-model="currentObject.register_title" label="Tytuł rejestracji"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.login_title" label="Tytuł logowania"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.name" label="Imię i nazwisko"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.email" label="Adres E-mail"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.password" label="Hasło"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.password_confirm" label="Potwierdź Hasło"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.close_icon" label="Ikona zamknięcia"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.download" label="Pobierz"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.privace_policy" label="Polityka prywatności"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.shop_regulations" label="Regulamin sklepu"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.register_now" label="Nie masz konta? Zarejestruj się"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.make_account" label="Załóż konto"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.or" label="Lub"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.fb_button_name" label="Zaloguj się przez Facebooka"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.fb_icon" label="Ikona przycisku Facebooka"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.login" label="Przycisk zaloguj się"></v-text-field>
								
							</div>
						</v-col>

						<v-col cols="4" >
							<div class="pa-5 d-flex flex-column justify-content-between">
								<div>
									<v-img :src="currentObject.bg_register_photo ? getUrl(currentObject.bg_register_photo) : getImageDefaultPlaceholder()" :alt="currentObject.bg_register_photo_alt"></v-img>
									<ImagePicker title="Tło rejestracji" @updateDeletedPhoto="updateDeletedPhoto" :activePhotoPath="currentObject.bg_register_photo" @loadedImage="currentObject.bg_register_photo = $event" :img="currentObject.bg_register_photo"/>
								</div>
								
								<v-text-field color="primary"  v-model="currentObject.bg_register_photo_alt" label="Tekst alternatywny tła rejestracji"></v-text-field>
							</div>

							<div class="pa-5 d-flex flex-column justify-content-between">
								<div>
									<v-img :src="currentObject.bg_login_photo ? getUrl(currentObject.bg_login_photo) : getImageDefaultPlaceholder()" :alt="currentObject.bg_login_photo_alt"></v-img>
									<ImagePicker title="Tło logowania" @updateDeletedPhoto="updateDeletedPhoto" :activePhotoPath="currentObject.bg_login_photo" @loadedImage="currentObject.bg_login_photo = $event" :img="currentObject.bg_login_photo"/>
								</div>
								
								<v-text-field color="primary"  v-model="currentObject.bg_login_photo_alt" label="Tekst alternatywny tła logowania"></v-text-field>
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
					title: '',
					subtitle: '',
					short_description: '',
					description: '',
					photo: '',
					photo_alt: '',
					button_name: ''
				},
			}
		},
		...vueComponents
	}
</script>