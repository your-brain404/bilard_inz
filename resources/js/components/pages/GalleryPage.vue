<template>
	<v-container class="py-12">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ gallery_descriptions.title }}</h2>
		</v-row>
		<v-row>
			<v-col @click="lightbox = true; activePhotoId = i" v-for="(photo, i) in gallery" :key="i" cols="12" lg="4">
				<div class="bg-picture gallery-page-photo" :style="`background-image: url('${getUrl(photo.path)}')`"></div>
			</v-col>
			<Lightbox :lightbox="lightbox" :gallery="galleryLightbox" :activePhotoId="activePhotoId" @closeLightbox="lightbox = false"/>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import Lightbox from '../lightbox/Lightbox'
	import url from '../../helpers/photo/url.js'

	export default {
		props:['deleteFlag'],
		data() {
			return {
				lightbox: false,
				gallery: [],
				lightbox: false,
				galleryLightbox: [],
				activePhotoId: 0,
				gallery_descriptions: {}
			}
		},
		methods: {
			getGalleryDescriptions() {
				axios.get('/api/gallery_descriptions/get_one/1').then(res => this.gallery_descriptions = res.data);
			},
			getUrl: src => url(src),
			getGallery() {
				this.$store.commit('loading', true);
				axios.get(`/api/gallery/get_photos/gallery_page/1`).then(res => {
					this.gallery = res.data;
					this.setGalleryLightbox(res.data);
					this.$store.commit('loading', false);
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			},
			setGalleryLightbox(gallery){
				gallery.forEach(photo => this.galleryLightbox.push(photo.path));
			}, 
		},
		created() {
			this.getGallery();
			this.getGalleryDescriptions();
		},
		components: {
			Lightbox
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getGallery();
				}
			},
			
		},
	}
</script>

<style>
	.gallery-page-photo {
		width: 100%;
		height: 300px;
	}
</style>