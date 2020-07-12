<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color">Slider {{ formTitle }}</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="8">
							<div class="pa-3">
								<v-text-field color="primary"  v-model="title" :rules="rules.titleRules" label="Tytuł *" required></v-text-field>
								<v-text-field  color="primary" v-model="subtitle" label="Podtytuł"></v-text-field>
							</div>
						</v-col>

						<v-col cols="4" >
							<div class="pa-3">
								<v-img :src="img" :alt="photo_alt"></v-img>
								<ImagePicker @loadedImage="img = $event" :img="img"/>
								
								<v-text-field color="primary"  v-model="photo_alt" label="Tekst alternatywny zdjęcia"></v-text-field>
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
	import axios from 'axios';
	import ImagePicker from '../../../components/image-picker/ImagePicker';

	export default {
		data: () => ({
			valid: true,
			name: '',
			rules: {
				titleRules: [
				v => !!v || 'Tytuł jest wymagany!'
				],
			},
			photo_alt: '',
			title: '',
			subtitle: '',
			file: [],
			img: 'https://via.placeholder.com/250'

		}),
		computed:{
			
			formTitle(){
				return this.$route.params.id ? 'Edycja' : 'Dodawanie';
			}
		},
		methods: {
			validate () {
				let formData = new FormData();
				formData.append('title', this.title);
				formData.append('subtitle', this.subtitle);
				formData.append('photo_alt', this.photo_alt);

				axios.post('/api/slider/add',formData).then(res=>console.log(res)).catch(err=>console.log(err));
			}
		},
		components:{
			ImagePicker
		}
	}
</script>