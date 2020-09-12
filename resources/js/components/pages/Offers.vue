<template>
	<v-container class="">
		<v-row class="justify-content-center">
			<h2 class="about-title font-weight-bold text-center first-color">A co w ofercie?</h2>
		</v-row>
		<v-row>
			<v-col v-for="(offer, i) in offers" :key="i" cols="12" sm="6" md="4">
				<v-card @mouseover="setPhotoClass(i)" flat class="mx-auto offer-card" max-width="400">
					<v-img class="white--text align-end offer-card-photo" height="200px" :alt="offer.photo_alt" :src="getPhoto(offer.photo)">
						<v-card-title>{{ offer.title }}</v-card-title>
					</v-img>
					<v-card-subtitle class="pb-2">{{ offer.subtitle }}</v-card-subtitle>
					<v-card-text class="text--primary">
						<div>{{ offer.description }}</div>
					</v-card-text>
				</v-card>
			</v-col>
			<v-btn class="my-5 offer-button"  link x-large block color="#da5a33" outlined>CZYTAJ WIĘCEJ</v-btn>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'

	export default{
		props:['deleteFlag'],
		data(){
			return{
				offers: []
			}
		},
		created(){
			this.getOffers();
		},
		methods:{
			setPhotoClass(id){

			},
			getOffers(){
				axios.get('/api/offers/get_all').then(res => {
					this.offers = res.data;
					this.$emit('blockDataEmit', this.offers);
				}).catch(err => {
					console.log(err);
				})
			},
			getPhoto(src){
				return url(src);
			},
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getOffers();
				}
			}
		}

	}
</script>

<style>
	.offer-button, .offer-card, .offer-card-photo{
		transition: all 0.15s!important;
	}
	.offer-button:hover{
		color:white!important;
		background-color: var(--first-color); 
	}
	.offer-card:hover{
		box-shadow: 0 3px 1px -2px rgba(0,0,0,.2), 0 2px 2px 0 rgba(0,0,0,.14), 0 1px 5px 0 rgba(0,0,0,.12)!important;
	}
	.offer-card:hover .offer-card-photo{
		opacity: 0.6;
	}
</style>