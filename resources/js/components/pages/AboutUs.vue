<template>
	<v-container>
		<v-row class="justify-content-center">
			<h2 class="about-title font-weight-bold text-center first-color">{{ about[0].title }}</h2>
		</v-row>
		<v-row>
			<v-col cols="12" md="8">
				<img class="about-photo" :src="getUrl(about[0].photo)" alt="">
			</v-col>
			<v-col class="about-content" cols="12" md="4">
				<h3 class="about-content-title">{{ about[0].subtitle }}</h3>
				<p class="about-content-text">{{ about[0].description }}</p>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'

	export default{
		data(){
			return{
				about:[
				{title:'', subtitle: '', short_description: '', description: '', photo: '', photo_alt: ''}
				]
			}
		},
		created(){
			axios.get('/api/about_us/get_all').then(res => {
				if(res.data.length > 0) this.about = res.data;
				this.$emit('blockDataEmit', this.about);
			});
			
		},
		methods:{
			getUrl(src){
				return url(src);
			}
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