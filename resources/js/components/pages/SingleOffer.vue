<template>
	<v-container class="py-12 offer">
		<v-row>
			<v-col>
				<Breadcrumb link="/oferta" :title="offer.title" :category="offers_descriptions.title" />
			</v-col>
		</v-row>
		<v-row>

			<v-col cols="12" md="4">
				<div @click="lightbox = true; activePhotoId = 0" class="news-picture single-news-picture" :style="`background-image: url(${getUrl(offer.photo)})`"></div>
			</v-col>
			<v-col cols="12" md="8" class="d-flex flex-column justify-content-center">
				<h2 class="font-weight-bold">{{ offer.title }}</h2>
				<p>{{ offer.subtitle }}</p>
			</v-col>
		</v-row>
		<v-row>
			<v-col> <p v-html="offer.short_description"></p> </v-col>
		</v-row>
		<v-row>
			<v-col> <p v-html="offer.description"></p> </v-col>
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
				offer: {},
				gallery: [],
				galleryLightbox: [],
				lightbox: false,
				activePhotoId: 0,
				offers_descriptions: {},
			}
		},
		methods: {
			async getOffersDescriptions() {
				await axios.get('/api/offers_descriptions/get_one/1').then(res => this.offers_descriptions = res.data);
			},
			getUrl: src => url(src),
			async getOffer() {
				this.$store.commit('loading', true);
				await axios.get(`/api/offers/get_one/${this.$route.params.id}`).then(res => {
					this.offer = res.data;
					this.$store.commit('loading', false);
					this.$emit('meta_title', res.data.title)
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			}, 
			setGalleryLightbox(gallery) {
				for(let photo of gallery) 
					this.galleryLightbox.push(photo.path);
			},
			async getGallery() {
				this.$store.commit('loading', true);
				await axios.get(`/api/gallery/get_photos/offers/${this.$route.params.id}`).then(res => {
					this.gallery = res.data;
					this.setGalleryLightbox(res.data);
					this.$store.commit('loading', false);
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			},
		},
		created() {
			this.getOffer();
			this.getGallery();
			this.getOffersDescriptions();
		},
		components: {
			Lightbox, Breadcrumb
		},
		computed: {
			concatGalleryLightbox() {
				return [this.offer.photo].concat(this.galleryLightbox)
			}, 
		}
	}
</script>

<style>
	.offer p {
		font-size: 1rem;
	}
</style>