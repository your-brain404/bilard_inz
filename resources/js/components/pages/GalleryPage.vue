<template>
	<v-container class="py-12">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ galleryDescriptions.title }}</h2>
		</v-row>
		<v-row>
			<v-col @click="lightbox = true; activePhotoId = i" v-for="(photo, i) in gallery" :key="i" cols="12" md="6" lg="4">
				<div class="bg-picture gallery-page-photo" :style="`background-image: url('${url(photo.path)}')`"></div>
			</v-col>
			<Lightbox :lightbox="lightbox" :gallery="galleryLightbox" :activePhotoId="activePhotoId" @closeLightbox="lightbox = false"/>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import Lightbox from '../lightbox/Lightbox'
	import url from '@/helpers/photo/url.js'

	export default {
		props: ['reloadFlag'],
		watch: {
			reloadFlag() {
				if(this.reloadFlag) this.getGallery();
			}
		},
		data() {
			return {
				lightbox: false,
				gallery: [],
				lightbox: false,
				galleryLightbox: [],
				activePhotoId: 0,
				galleryDescriptions: {},
				url
			}
		},
		methods: {
			async getGalleryDescriptions() {
				await axios.get('/api/gallery_descriptions/get_one/1').then(res => this.galleryDescriptions = res.data);
			},
			async getGallery() {
				this.$store.commit('loading', true);
				await axios.get(`/api/gallery/get_photos/gallery_page/1`).then(res => {
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
		
	}
</script>

<style>
	.gallery-page-photo {
		width: 100%;
		height: 300px;
	}
</style>