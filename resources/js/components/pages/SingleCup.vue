<template>
	<v-container class="py-12 cup">
		<v-row>
			<v-col>
				<Breadcrumb link="/puchary" :title="cup.title" :category="cupsDescriptions.title" />
			</v-col>
		</v-row>
		<v-row>

			<v-col cols="12" md="4">
				<div @click="lightbox = true; activePhotoId = 0" class="news-picture single-news-picture" :style="`background-image: url(${getUrl(cup.photo)})`"></div>
			</v-col>
			<v-col cols="12" md="8" class="d-flex flex-column justify-content-center">
				<h2 class="font-weight-bold">{{ cup.title }}</h2>
			</v-col>
		</v-row>
		
		<v-row>
			<v-col> <p v-html="cup.description"></p> </v-col>
		</v-row>

		<v-row>
			<v-col v-for="(photo, i) in gallery" :key="i" cols="12" lg="4" @click="lightbox = true; activePhotoId = i+1">
				<div class="bg-picture single-news-photo" :style="`background-image: url('${getUrl(photo.path)}')`"></div>
			</v-col>
			<Lightbox :lightbox="lightbox" :gallery="concatGalleryLightbox" :activePhotoId="activePhotoId" @closeLightbox="lightbox = false"/>
		</v-row>
		

	</v-container>
</template>

<script>
	import axios from 'axios'
	import Lightbox from '../lightbox/Lightbox'
	import url from '../../helpers/photo/url.js'
	import Breadcrumb from '@/components/breadcrumb/Breadcrumb';

	export default {
		data() {
			return {
				cup: {},
				gallery: [],
				galleryLightbox: [],
				lightbox: false,
				activePhotoId: 0,
				cupsDescriptions: {}
			}
		},
		methods: {
			async getCupsDescriptions() {
				await axios.get('/api/cups_descriptions/get_one/1').then(res => this.cupsDescriptions = res.data);
			},
			getUrl: src => url(src),
			async getCup() {
				this.$store.commit('loading', true);
				await axios.get(`/api/cups/get_one/${this.$route.params.id}`).then(res => {
					this.cup = res.data;
					this.$store.commit('loading', false);
					this.$emit('meta_title', res.data.title);
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			}, 
			setGalleryLightbox(gallery){
				gallery.forEach(photo => this.galleryLightbox.push(photo.path));
			},  
			async getGallery() {
				this.$store.commit('loading', true);
				await axios.get(`/api/gallery/get_photos/cups/${this.$route.params.id}`).then(res => {
					this.gallery = res.data;
					this.setGalleryLightbox(res.data);
					this.$store.commit('loading', false);
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			},

		},
		created() {
			this.getCup();
			this.getGallery();
			this.getCupsDescriptions();
		},
		components: {
			Lightbox, Breadcrumb
		},
		computed: {
			concatGalleryLightbox(){
				return [this.cup.photo].concat(this.galleryLightbox);
			},
		}
	}
</script>

<style>
	.cup p {
		font-size: 1rem;
	}
</style>