<template>
	<v-carousel hide-delimiters cycle>
		<v-carousel-item class="slider-background" v-for="slide in slides" :alt="slide.photo_alt" :key="slide.id" :src="getPhoto(slide.photo)">
			<v-row class="fill-height flex-column" align="center" justify="center">
				<h2 class="slider-title font-weight-bold first-color">{{ slide.title }}</h2>
				<div class="slider-subtitle white--text font-weight-bold">{{ slide.subtitle }}</div>
			</v-row>
		</v-carousel-item>
	</v-carousel>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'

	export default{
		props:['deleteFlag'],
		data(){
			return{
				slides: [],
			}
		},
		created(){
			this.getSlider();
			
		},
		methods:{
			async getSlider(){
				let endpoint = `get_all`;
				if(this.$route.path == '/') endpoint = `get_where?active=1`;
				this.$store.commit('loading', true);
				await axios.get(`/api/slider/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.slides = res.data;
					this.$emit('blockDataEmit', this.slides);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getPhoto(src){
				return url(src);
			}
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getSlider();
				}
			}
		}
	}
</script>

<style>
	@media(max-width: 500px) {
		.slider-subtitle {
			padding-left: 1rem;
			padding-right: 1rem;
			text-align: center;
		}
	}
	.slider-title{
		font-size: 3rem;
		text-shadow: 0 0 5px black;
		margin-bottom: 0;
	}
	.slider-subtitle{
		font-size: 1.5rem;
		text-shadow: 0px 0px 10px black;
	}
</style>