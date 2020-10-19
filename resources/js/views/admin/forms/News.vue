<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Aktualności {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="8">
							<div class="pa-5">
								<v-text-field color="primary"  v-model="title" :rules="rules.titleRules" label="Tytuł *" required></v-text-field>
								<v-text-field  color="primary" v-model="category" label="Kategoria"></v-text-field>
								<v-text-field  color="primary" v-model="button_name" label="Napis na przycisku"></v-text-field>
								<TagsInput @tags="tags = $event" />
								<v-textarea counter label="Krótki opis" v-model="short_description" ></v-textarea>
								<v-textarea counter label="Opis" v-model="description" ></v-textarea>
							</div>
						</v-col>

						<v-col cols="4" >
							<div class="pa-5">
								<v-img :src="activePhoto" :alt="photo_alt"></v-img>
								<ImagePicker @updateDeletedPhoto="updateDeletedPhoto" :activePhotoPath="currentObject.photo" @loadedImage="setImagePlaceholder" :img="img"/>
								
								<v-text-field color="primary" v-model="photo_alt" label="Tekst alternatywny zdjęcia"></v-text-field>
							</div>

							<div class="pa-5">
								<v-img :src="activeBannerPhoto" :alt="banner_photo_alt"></v-img>
								<ImagePicker @updateDeletedPhoto="updateDeletedPhoto" :activePhotoPath="currentObject.banner_photo" @loadedImage="setBannerImagePlaceholder" :banner="true" :img="banner_img"/>
								
								<v-text-field color="primary" v-model="banner_photo_alt" label="Tekst alternatywny zdjęcia banera"></v-text-field>
							</div>
						</v-col>

					</v-row>
					<v-divider class="mb-0"></v-divider>
					<v-card-actions class="pa-4">
						<v-btn :disabled="!valid || title==''" color="success" class="mr-2" @click="validate" >
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
	import FormService from '../../../components/services/FormService.js'
	let data = FormService.data;
	delete FormService.data;
	
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
				},
			}
		},
		...FormService
	}
</script>