<template>
	<v-container class="py-12 history">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ historyDescriptions.title }}</h2>
		</v-row>
		<v-row v-for="(info, i) in history" :key="i" class="mb-12">
			<v-col cols="12" lg="8">
				<div class="bg-picture history-photo" @click="lightboxes.splice(i, 1, true); activePhotoIds.splice(i, 1, 0);" :style="`background-image: url('${url(info.photo)}')`"></div>
			</v-col>
			<v-col cols="12" lg="4" class="d-flex flex-column justify-content-center">
				<h2 class="font-weight-bold">{{ info.title }}</h2>
			</v-col>
			<v-col cols="12" class="history-description" v-html="info.description"></v-col>
			<v-row class="history-gallery-container">
				<v-col v-for="(photo, j) in galleries[i]" :key="j" v-if="photo.item_id == info.id" cols="12" lg="4" @click="lightboxes.splice(i, 1, true); activePhotoIds.splice(i, 1, j+1);">
					<div class="bg-picture single-news-photo" :style="`background-image: url('${url(photo.path)}')`"></div>
				</v-col>
			</v-row>
			<Lightbox :lightbox="lightboxes[i]" :gallery="concatGalleryLightbox(i)" :activePhotoId="activePhotoIds[i]" @closeLightbox="lightboxes.splice(i, 1, false)"/>

		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import Lightbox from '../lightbox/Lightbox'

	export default {
		props:['deleteFlag'],
		data() {
			return {
				history: [],
				lightboxes: [],
				galleries: [],
				activePhotoIds: [],
				galleriesLightbox: [],
				historyDescriptions: {},
				url
			}
		},
		methods: {
			async getHistoryDescriptions() {
				await axios.get('/api/history_descriptions/get_one/1').then(res => this.historyDescriptions = res.data);
			},
			async getHistory(){
				this.$store.commit('loading', true);
				await axios.get(`/api/history/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.history = res.data;

					this.$emit('blockDataEmit', this.history);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			concatGalleryLightbox(index){
				return [this.history[index].photo].concat(this.galleriesLightbox[index]);
			},
			setGalleryLightbox(gallery, index){
				gallery.forEach(photo => {
					this.galleriesLightbox[index].push(photo.path)
				});
			},
			async getGalleries() {
				this.$store.commit('loading', true);
				for(let i=0 ; i<this.history.length ; i++) {

					await axios.get(`/api/gallery/get_photos/history/${this.history[i].id}`).then(res => {
						this.galleries.push(res.data);
						this.galleriesLightbox.push([]);
						this.setGalleryLightbox(res.data, i);
						this.$store.commit('loading', false);
					}).catch(err => {
						this.$store.commit('loading', false);
					})

					this.lightboxes.push(false);
					this.activePhotoIds.push(0);
				}
			},
		},
		created() {
			this.getHistory();
			this.getHistoryDescriptions();
		},
		components: {
			Lightbox
		},
		watch: {
			history() {
				if(this.history.length > 0) this.getGalleries();
			},
			deleteFlag(){
				if(this.deleteFlag){
					this.getHistory();
				}
			}
		}

	}
</script>

<style>
	.history-photo {
		height: 400px;
		width: 100%;
	}
	.history-description * {
		margin: 0!important;
	}
	.history-description img {
		width: 100%;
	}
	.history-description iframe {
		width: 100%;
		height: 500px;
	}
	.history-gallery-container {
		padding: 12px;
	}
</style>