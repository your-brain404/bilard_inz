<template>
	<v-card flat>
		<v-card-text>
			<v-row class="d-flex justify-content-center">
				<v-col cols="6" lg="4" sm="4" md="4">
					<v-img right contain :position="'center center'"  :src="img"></v-img>
				</v-col>
			</v-row>
			<v-row class="d-flex justify-content-center">
				<v-col lg="4" sm="12" md="4">
					<v-file-input id="file" v-model="file" @change="$emit('loadedImage', img)" multiple show-size counter label="Zdjęcie" accept="image/png, image/jpeg, image/bmp, image/gif, image/svg, image/jfif" prepend-icon="mdi-camera"></v-file-input>
					<v-btn @click="submit" class="" color="success">
						<v-icon left class="">mdi-check</v-icon>
						<span>Wyślij</span>
					</v-btn>
				</v-col>
			</v-row>


		</v-card-text>
	</v-card>
</template>

<script>
	import axios from 'axios';
	
	export default{
		data(){
			return{
				file: [],
			}
		},
		computed:{
			img(){
				return this.file.length == 0 ? 'https://via.placeholder.com/250' : URL.createObjectURL(this.file[0]);
			},
		},
		methods:{
			submit(){
				if(this.file.length == 0) return;
				for(let i=0 ; i<this.file.length ; i++ ){
					let formData = new FormData();
					formData.append('file', this.file[i]);
					axios.post('/api/media/add',formData).then(res=>{
						this.$emit('loadPhotos')}).catch(err=>console.log(err));
				} 
			},
		}
	}
</script>