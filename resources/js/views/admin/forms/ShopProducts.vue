<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Produkt sklepu {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="8">
							<div class="pa-5">
								<v-text-field color="primary"  v-model="currentObject.title" :rules="rules.titleRules" label="Tytuł *" required></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.subtitle" label="Podtytuł"></v-text-field>
								<v-text-field  color="primary" :rules="rules.titleRules.concat(rules.priceRules, rules.positiveRules)" v-model="currentObject.price" label="Cena *"></v-text-field>
								<v-text-field type="number" color="primary" v-model="currentObject.amount" min="0" step="1" label="Ilość *" :rules="rules.titleRules.concat(rules.amountRules, rules.nonNegativeRules)"></v-text-field>
								<v-text-field type="number" color="primary" v-model="currentObject.discount" min="0" step="0.01" label="Rabat w procentach (opcjonalnie)" :rules="rules.nonNegativeRules"></v-text-field>
								<Colors :rules="rules" :selectedColor="currentObject.color_id" @color="currentObject.color_id = $event.id" />
								
								<div class="mt-3">
									<p class="mb-1">Opis</p>
									<vue-editor v-model="currentObject.description"></vue-editor>
								</div>
								<div class="mt-3">
									<p class="mb-1">Opis Seo</p>
									<vue-editor v-model="currentObject.meta_description"></vue-editor>
								</div>
							</div>
						</v-col>

						<v-col cols="4" >
							<div class="pa-5 d-flex flex-column justify-content-between">
								<div>
									<v-img :src="activePhoto" :alt="currentObject.photo_alt"></v-img>
									<ImagePicker  @updateDeletedPhoto="updateDeletedPhoto" :activePhotoPath="currentObject.photo" @loadedImage="setImagePlaceholder" :img="currentObject.photo"/>
								</div>
								
								<v-text-field color="primary"  v-model="currentObject.photo_alt" label="Tekst alternatywny zdjęcia"></v-text-field>
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
	import Colors from '../../../components/select/Colors'

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
					description: '',
					price: 0,
					amount: 0,
					photo: '',
					discount: 0,
					photo_alt: '',
					meta_description: '',
					color_id: 0,
					category_id: this.$route.params.parent_id
				},
			}
		},
		...vueComponents,
		components: {
			Colors, ...vueComponents.components
		},
		
	}
</script>