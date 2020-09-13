<template>
	<v-row justify="center" class="mt-5 mb-2 px-3">
		<v-dialog v-model="dialog" persistent>
			<template v-slot:activator="{ on, attrs }">
				<v-btn color="primary" dark v-bind="attrs" v-on="on" class="w-100">
					Dodaj zdjęcie {{ banner ? 'banerowe' : '' }}
				</v-btn>
			</template>
			<v-card>
				<v-card-title class="d-flex justify-content-between">
					<div>Dodaj zdjęcia</div>
					<v-icon @click="dialog = false">mdi-close</v-icon>
				</v-card-title>
				<v-tabs v-model="tab" background-color="primary" dark>
					<v-tab v-for="tab in tabs" :key="tab">
						{{ tab}}
					</v-tab>
				</v-tabs>

				<v-tabs-items v-model="tab">
					<v-tab-item >
						<v-card flat>
							<v-card-text>
								<v-container>
									<v-row class="d-flex align-items-center">
										<v-col @mouseout="closeIcon = 0" @mouseover="showCloseIcon(photo.id)" class="d-flex align-items-between flex-column" lg="2" md="3" sm="4" v-for="photo in photos" :key="photo.id">
											<div class="d-flex justify-content-between">
												<v-icon class="check-icon" :color="activePhotos.includes(photo.id) || activePhoto == photo.id ? 'success' : 'white'">mdi-check</v-icon>
												<v-icon @click="deletePhoto(photo.id)" :color="closeIcon == photo.id ? 'black' : 'white'" class=" close-icon">mdi-close</v-icon>
											</div>
											<v-img  @click="setPhotoClass(photo.id)" class="image-picker-photo" :src="getUrl(photo.path)"></v-img>
										</v-col>
									</v-row>
								</v-container>
							</v-card-text>
						</v-card>
					</v-tab-item>
					<v-tab-item >
						<AddPhotos @loadPhotos="loadPhotos" />
					</v-tab-item>
				</v-tabs-items>
			</v-card>
		</v-dialog>
	</v-row>
</template>

<script>
	import axios from 'axios';
	import AddPhotos from './AddPhotos.vue';
	import url from '../../helpers/photo/url.js';

	export default {
		props:['activePhotoPath', 'banner'],
		data () {
			return {
				dialog: false,
				tab: null,
				tabs: ['Wybierz zdjęcie',  'Dodaj Nowe Zdjęcie'],
				photos: [],
				activePhotos: [],
				activePhoto: 0,
				multiple: false,
				test: {},
				closeIcon: 0

			}
		},
		components:{
			AddPhotos
		},
		
		
		methods:{
			showCloseIcon(id){
				this.closeIcon = id;
			},
			isActivePhotoDeleted(id){
				if(this.activePhotoPath !== null){
					for(let photo of this.photos){
						if(photo.id == id && id == this.activePhoto){
							this.$emit('loadedImage', 'placeholder');
							this.$emit('updateDeletedPhoto');
						}
					}
				}
			},
			loadPhotos(){
				axios.get('/api/media/get_photos').then(res =>{
					this.photos = res.data;
				});
			},

			deletePhoto(id){
				if(confirm('Czy na pewno?')){
					axios.delete('/api/media/delete/'+ id).then(res => {
						this.isActivePhotoDeleted(id);
						this.loadPhotos();
					}).catch(err => console.log(err));
				}
			},
			getPhotoLinks(){
				let links = [];
				
				for(let i=0 ; i< this.photos.length ; i++){
					for(let j = 0 ; j < this.activePhotos.length ; j++){
						if(this.photos[i].id == this.activePhotos[j]) links[0] = this.photos[i];
					}
					
				}
				return links;
			},
			setPhotoClass(id){
				if(this.multiple){
					if(!this.activePhotos.includes(id)) this.activePhotos.push(id);
					else this.activePhotos.splice(this.activePhotos.indexOf(id),1);
				}else{
					this.activePhoto = id;
				}

				this.sendImageIdToPlaceholder();
			},
			sendImageIdToPlaceholder(){
				this.$emit('loadedImage', this.getPhotoById(this.activePhoto));  
			},
			getPhotoById(id){
				for(let i=0 ; i<this.photos.length ; i++){
					if(this.photos[i].id == id){
						return this.photos[i].path;
					}
				}
			},
			getUrl(src){
				return url(src);
			}

		},
		created(){
			this.loadPhotos();
		},
	}
</script>
<style>
	.image-picker-photo{
		cursor: pointer;
	}

</style>