<template>
	<v-row justify="center">
		<v-dialog v-model="dialog" persistent>
			<template v-slot:activator="{ on, attrs }">
				<v-btn color="primary" dark v-bind="attrs" v-on="on" class="w-100">
					Dodaj zdjęcie
				</v-btn>
			</template>
			<v-card>
				<v-card-title class="d-flex justify-content-between">
					<div>Dodaj zdjęcia</div>
					<v-icon @click="dialog = false">mdi-close</v-icon>
				</v-card-title>
				<v-tabs v-model="tab" background-color="primary" dark>
					<v-tab v-for="item in items" :key="item.tab">
						{{ item.tab }}
					</v-tab>
				</v-tabs>

				<v-tabs-items v-model="tab">
					<v-tab-item >
						<v-card flat>
							<v-card-text>
								<v-container>
									<v-row class="">
										<v-col @click="setPhotoClass(photo.id)" class="d-flex align-items-end flex-column" lg="2" md="3" sm="4" v-for="photo in items[0].content" :key="photo.id">
											<v-icon class="check-icon" :color="activePhotos.includes(photo.id) ? 'success' : 'white'">mdi-check</v-icon>
											<v-img class="image-picker-photo" :src="`../${photo.path}`"></v-img>
										</v-col>
									</v-row>
								</v-container>
							</v-card-text>
						</v-card>
					</v-tab-item>
					<v-tab-item >
						<v-card flat>
							<v-card-text>
								<v-row class="d-flex justify-content-center">
									<v-col cols="6" lg="4" sm="4" md="4">
										<v-img right contain :position="'center center'"  :src="img"></v-img>
									</v-col>
								</v-row>
								<v-row class="d-flex justify-content-center">
									<v-col lg="4" sm="12" md="4">
										<v-file-input id="file" v-model="file" @change="$emit('loadedImage', img)" :multiple="multiple" show-size counter label="Zdjęcie" accept="image/png, image/jpeg, image/bmp, image/gif, image/svg, image/jfif" prepend-icon="mdi-camera"></v-file-input>
									</v-col>
								</v-row>
								
								
							</v-card-text>
						</v-card>
					</v-tab-item>
				</v-tabs-items>
				<v-divider class="mb-0"></v-divider>
				<v-card-actions class="pa-3">
					<v-btn @click="submit" class="" color="success">
						<v-icon left class="">mdi-check</v-icon>
						<span>Zapisz</span>
					</v-btn>
					<v-btn class="" color="warning">
						<v-icon left class="">mdi-close</v-icon>
						<span>Anuluj</span>
					</v-btn>
				</v-card-actions>
			</v-card>
		</v-dialog>
	</v-row>
</template>

<script>
	import axios from 'axios';

	export default {
		data () {
			return {
				dialog: false,
				tab: null,
				items: [
				{ tab: 'Wybierz zdjęcie', content: [] },
				{ tab: 'Dodaj Nowe Zdjęcie', content: [] },

				],
				activePhotos: [],
				multiple: false,
				file: []

			}
		},
		computed:{
			img(){
				return this.file.length == 0 ? 'https://via.placeholder.com/250' : URL.createObjectURL(this.file[0]);
			},
		},
		created(){
			axios.get('/api/media/get_photos').then(res => this.items[0].content = res.data);
		},
		methods:{
			setPhotoClass(id){
				if(this.multiple) this.activePhotos.includes(id) ?  this.activePhotos.splice(this.activePhotos.indexOf(id), 1)  : this.activePhotos.push(id); 
				else if(this.activePhotos.length == 1 && this.activePhotos.includes(id)){ 
					this.activePhotos.splice(0, 1); 
				}
				else {
					this.activePhotos.splice(0, 1); 
					this.activePhotos.push(id);
				}

			},
			submit(){
				if(this.file.length == 0) return;
				for(let i=0 ; i<this.file.length ; i++ ){
					let formData = new FormData();
					formData.append('file', this.file[i]);
					axios.post('/api/media/add',formData).then(res=>console.log(res)).catch(err=>console.log(err));
				} 
			}

		}
	}
</script>
<style>
	.image-picker-photo{
		cursor: pointer;
	}
</style>