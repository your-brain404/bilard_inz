<template>
	<v-carousel hide-delimiters >
		<v-carousel-item class="slider-background" v-for="(slide,i) in slides" :alt="slide.photo_alt" :key="i" :src="getPhoto(slide.photo)">
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
			getSlider(){
				axios.get('/api/slider/get_all').then(res => {
					this.slides = res.data;
					this.$emit('blockDataEmit', this.slides);
				}).catch(err => {
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
	.slider-title{
		font-size: 3rem;
		text-shadow: 0 0 5px black;
	}
	.slider-subtitle{
		font-size: 1.5rem;
		text-shadow: 0px 0px 10px black;
	}
</style>