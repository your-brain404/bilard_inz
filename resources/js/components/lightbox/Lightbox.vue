<template>
	<v-overlay :opacity="0.46" :value="lightbox" :z-index="5" >
		<v-container>
			<v-row class="d-flex justify-content-end">
				<v-icon color="white" @click="$emit('closeLightbox')">mdi-close</v-icon>
			</v-row>
			<v-row>
				<v-col cols="12" class="d-flex justify-content-center">
					<img class="img-fluid" width="90%" :src="getUrl(activePhoto)">
				</v-col>
			</v-row>
			<v-row class="d-flex justify-content-center">
				<v-col @click="activePhoto = photo" v-for="(photo, i) in gallery" :key="i" cols="2">
					<div class="bg-picture mx-auto lightbox-gallery-photo" :style="`background-image: url('${getUrl(photo)}')`" ></div>
				</v-col>
			</v-row>
		</v-container>
	</v-overlay>
</template>

<script>
	import url from '../../helpers/photo/url.js'

	export default {
		props:['gallery', 'activePhotoId', 'lightbox'],
		methods:{
			getUrl(src){
				return url(src);
			},
		},
		data(){
			return{
				activePhoto: ''
			}
		},
		watch:{
			lightbox(){
				this.activePhoto = this.gallery[this.activePhotoId];
			}
		}
	}
</script>

<style>
	.bg-picture{
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		width: 10vw;
		height: 10vw;
		cursor: pointer;
	}

	.lightbox-gallery-photo {
		width: 100%;
		height: 10vw;
	}
</style>