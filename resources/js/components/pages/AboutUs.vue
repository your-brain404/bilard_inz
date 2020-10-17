<template>
	<v-container >
		<v-container v-for="row in about" :key="row.id">
			<v-row class="justify-content-center">
				<h2 class="about-title font-weight-bold text-center first-color">{{ row.title }}</h2>
			</v-row>
			<v-row>
				<v-col cols="12" md="8">
					<img @click="lightbox = true" class="about-photo" :src="getUrl(row.photo)" :alt="row.photo_alt">
				</v-col>
				<v-col class="about-content" cols="12" md="4">
					<h3 class="about-content-title">{{ row.subtitle }}</h3>
					<p class="about-content-text">{{ row.description }}</p>
				</v-col>
			</v-row>
		</v-container>
		<Lightbox :gallery="[about[0].photo]" :activePhotoId="0" :lightbox="lightbox" @closeLightbox="lightbox = false" />
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
				lightbox: false
			}
		},
		
		methods:{
			getUrl(src){
				return url(src);
			},
			getData(){
				this.$store.commit('loading', true);
				axios.get('/api/about_us/get_all').then(res => {
					if(res.data.length > 0) this.about = res.data;
					this.$emit('blockDataEmit', this.about);
					this.$store.commit('loading', false);
				});
			}
		},
		created(){
			this.getData();

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
</style>