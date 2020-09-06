<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Slider {{ formTitle }}
					</h2>
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
								<v-img :src="activePhoto" :alt="photo_alt"></v-img>
								<ImagePicker @updateDeletedPhoto="updateDeletedPhoto" :activePhotoPath="currentObject.photo" @loadedImage="setImagePlaceholder" :img="img"/>
								
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
	import SnackbarAlerts from '../../../data/snackbar-alerts.js'
	import url from '../../../helpers/photo/url.js'

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
			activePhoto: 'https://via.placeholder.com/250',
			img: '',
			currentObject:{},
		}),
		computed:{
			formTitle(){
				return this.$route.params.id ? 'Edycja' : 'Dodawanie';
			}
		},
		methods: {
			getImageDefaultPlaceholder(){
				return 'https://via.placeholder.com/250';
			},
			setImagePlaceholder(event){
				if(event === 'placeholder'){
					this.img = '',
					this.activePhoto = this.getImageDefaultPlaceholder();
				} else{
					this.img = event;
					this.activePhoto = url(event);
				}
			},
			getFormData(){
				return {
					id: this.$route.params.id,
					title: this.title,
					subtitle: this.subtitle,
					photo_alt: this.photo_alt,
					photo: this.img !== '' ? this.img : this.currentObject.photo
				};
			},
			resetForm(){
				this.title = '';
				this.subtitle = '';
				this.photo_alt = '';
				this.photo = '';
				this.activePhoto = this.getImageDefaultPlaceholder();
			},
			add(formData){
				axios.post(`/api/${this.$route.path.split('/')[2]}/add`, formData,{
					headers:{
						'Content-Type': 'application/json'
					}
				}).then(res=>{
					this.$store.commit('setSnackbar', SnackbarAlerts.success);
					this.resetForm();
					this.$router.push(`/admin-panel#${this.$route.path.split('/')[2]}`);
				}).catch(err=>{
					this.$store.commit('setSnackbar', SnackbarAlerts.error);
				});
			},
			edit(formData){
				
				axios.put(`/api/${this.$route.path.split('/')[2]}/edit`, formData, {
					headers:{
						'Content-Type': 'application/json'
					}
				}).then(res=>{
					this.$store.commit('setSnackbar', SnackbarAlerts.success);
					this.$router.push(`/admin-panel#${this.$route.path.split('/')[2]}`);
				}).catch(err=>{
					this.$store.commit('setSnackbar', SnackbarAlerts.error);
					console.log(err);
				});
			},
			validate () {
				let formData = this.getFormData();
				this.$route.params.id ? this.edit(formData) : this.add(formData);
			},
			updateDeletedPhoto(){
				this.edit(this.getFormData());
			}

		},
		components:{
			ImagePicker
		},
		created(){
			if(this.$route.params.id){
				axios.get(`/api/${this.$route.path.split('/')[2]}/get_one/${this.$route.params.id}`).then(res =>{
					this.title = res.data.title;
					this.subtitle = res.data.subtitle;
					this.activePhoto = res.data.photo !== null ? url(res.data.photo) : this.activePhoto;
					this.photo_alt = res.data.photo_alt;
					this.currentObject = res.data;
				})
			}
		},
	}
</script>