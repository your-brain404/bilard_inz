<template>
	<v-container >
		<v-lazy :options="{ threshold: .5 }" transition="fade-transition" v-model="isActive">
			<v-container v-for="row in about" :key="row.id">
				<v-row class="justify-content-center">
					<h2 class="about-title font-weight-bold text-center first-color">{{ row.title }}</h2>
				</v-row>
				<v-row>
					<v-col cols="12" md="8">
						<img @click="lightbox = true; activePhotoId = 0" class="about-photo" :src="getUrl(row.photo)" :alt="row.photo_alt">
					</v-col>
					<v-col class="about-content" cols="12" md="4">
						<h3 class="about-content-title">{{ row.subtitle }}</h3>
						<p class="about-content-text" v-html="row.short_description"></p>
						<router-link to="/o-klubie" class="">
							<v-btn v-if="$route.path == '/'" outlined color="#da5a33" link class="w-100 offer-button">{{ row.button_name }}</v-btn>
						</router-link>
					</v-col>
				</v-row>
				<div v-if="$route.path == '/o-klubie' || $route.path == '/admin-panel/about_us'">
					<v-row>
						<v-col>
							<p class="about-content-text" v-html="row.description"></p>
						</v-col>
					</v-row>

					<v-row >
						<v-col v-for="(photo, i) in lightboxGallery" :key="i" cols="12" lg="4">
							<div @click="activePhotoId = i+1; lightbox = true" class="bg-picture about-gallery-photo" :style="`background-image: url('${getUrl(photo)}')`"></div>
						</v-col>
					</v-row>
				</div>

			</v-container>

			<Lightbox v-if="$route.path != '/o-klubie'" :gallery="[about[0].photo]" :activePhotoId="activePhotoId" :lightbox="lightbox" @closeLightbox="lightbox = false" />

			<Lightbox v-else :gallery="gallery" :activePhotoId="activePhotoId" :lightbox="lightbox" @closeLightbox="lightbox = false" />
		</v-lazy>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import Lightbox from '../lightbox/Lightbox';

	export default{
		data(){
			return{
				about:[{photo: null}],
				lightbox: false,
				lightboxGallery: [],
				activePhotoId: 0,
				isActive: false
			}
		},
		
		methods:{
			getUrl(src){
				return url(src);
			},
			async getData(){
				this.$store.commit('loading', true);
				await axios.get('/api/about_us/get_all').then(res => {
					if(res.data.length > 0) this.about = res.data;
					this.$emit('blockDataEmit', this.about);
					this.$store.commit('loading', false);
				});
			},
			setLightboxGallery(gallery) {
				for(let photo of gallery)
					this.lightboxGallery.push(photo.path)
			},
			async getGallery() {
				this.$store.commit('loading', true);
				await axios.get(`/api/gallery/get_photos/about_us/1`).then(res => {
					this.$store.commit('loading', false);
					this.setLightboxGallery(res.data);
				})
			},
		},
		computed: {
			gallery() {
				return [this.about[0].photo].concat(this.lightboxGallery)
			}
		},
		created(){
			this.getData();
			this.getGallery();

		},
		components:{
			Lightbox
		}
	}
</script>

<style>
	.about-title{
		font-size: 3rem;
		margin-top: 30px;
		text-shadow: 1px 0 2px black;
	}
	.about-photo{
		width:100%;
		height:auto;
		cursor: pointer;
	}
	.about-content{
		display: flex;
		justify-content: center;
		flex-direction: column;
	}
	.about-content-title{
		text-align: center;
		font-weight: bold;
		font-size: 2rem!important;
	}
	.about-content-text{
		text-align:justify;
		font-size: 1rem!important;
	}
	.about-gallery-photo {
		width: 100%;
		height: 300px;
	}
</style>