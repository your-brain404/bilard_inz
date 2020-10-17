<template>
	<v-container class="py-12">
		<v-row>
			<v-col>
				<div class="breadcrumb-container">
					<router-link class="white--text breadcrumb-link" to="/">
						<h3 class="breadcrumb-item ml-0">Strona główna </h3> 
					</router-link>
					> 
					<router-link class="white--text breadcrumb-link" :to="`/aktualnosci/kategoria/${singleNews.category}`">
						<h3 class="breadcrumb-item">{{ singleNews.category }} </h3>
					</router-link> 
					> 
					<h3 class="breadcrumb-item font-weight-bold">{{ singleNews.title }}</h3>
				</div>
			</v-col>
		</v-row>
		<v-row>

			<v-col cols="12" md="4">
				<div @click="lightbox = true; activePhotoId = 0" class="news-picture single-news-picture" :style="`background-image: url(${getUrl(singleNews.photo)})`"></div>
			</v-col>
			<v-col cols="12" md="8" class="d-flex flex-column justify-content-center">
				<h2 class="font-weight-bold">{{ singleNews.title }}</h2>
				<p>{{ singleNews.short_description }}</p>
			</v-col>
			<v-col> {{ singleNews.description }} </v-col>
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
	import url from '../../helpers/photo/url.js'
	import Lightbox from '../lightbox/Lightbox'
	import {db} from '../../firebase/firebase.js'

	export default {
		data() {
			return {
				singleNews: {},
				gallery: [],
				galleryLightbox: [],
				lightbox: false,
				activePhotoId: 0

			}
		},
		methods: {
			getUrl(src) {
				return url(src);
			},
			getSingleNews() {
				this.$store.commit('loading', true);
				axios.get(`/api/news/get_one/${this.$route.params.id}`).then(res => {
					this.$store.commit('loading', false);
					this.singleNews = res.data;
				}).catch(err => {
					console.log(err)
					this.$store.commit('loading', false);
				})
			},
			setGalleryLightbox(gallery) {
				for(let photo of gallery) 
					this.galleryLightbox.push(photo.path);
			},
			getGallery() {
				this.$store.commit('loading', true);
				axios.get(`/api/gallery/get_photos/news/${this.$route.params.id}`).then(res => {
					this.gallery = res.data;
					this.setGalleryLightbox(res.data);
					this.$store.commit('loading', false);
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			},
			getComments() {
				this.$store.dispatch('fetchCommentsWhere', [this.$route.params.id]);
			}
		},
		created() {
			this.getSingleNews();
			this.getGallery();
			this.getComments();
		},
		components: {
			Lightbox
		},
		computed: {
			concatGalleryLightbox() {
				return [this.singleNews.photo].concat(this.galleryLightbox)
			}, 
			comments() {
				return this.$store.getters.comments;
			}
		}

	}
</script>

<style>
	.single-news-picture {
		height: 200px;
		cursor: pointer;
	}
	.single-news-photo {
		width: 100%;
		height: 300px;
	}
	.breadcrumb-container {
		display: flex;
		align-items: center; 
		width: 100%;
		padding: 20px;
		background-color: var(--first-color);
		color: white;
		margin-bottom: 2rem
	}
	.breadcrumb-item {
		margin-right: 10px;
		margin-left: 10px;
		margin-bottom: 0;
		font-size: 1rem;
		
	}
	.breadcrumb-link:hover {
		text-decoration: underline!important;
	}


</style>