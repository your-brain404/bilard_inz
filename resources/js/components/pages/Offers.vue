<template>
	<v-container class="">
		<v-container>
			<v-row class="justify-content-center">
				<h2 class="about-title font-weight-bold text-center first-color">{{ offersDescriptions.title }}</h2>
			</v-row>
			<v-row justify="center">
				<v-col v-for="(offer, i) in offers" :key="i" cols="12" sm="6" md="4">
					<router-link :to="`/oferta/${offer.id}/${slugify(offer.title)}`">
						<v-card flat class="mx-auto offer-card" max-width="400">
							<v-img class="white--text align-end offer-card-photo" height="200px" :alt="offer.photo_alt" :src="url(offer.photo)">
								<v-card-title style="text-shadow: 0 0 10px black;">{{ offer.title }}</v-card-title>
							</v-img>
							<v-card-subtitle class="pb-0 ">{{ offer.subtitle }}</v-card-subtitle>
							<v-card-text class="text--primary ">
								<div v-html="offer.short_description"></div>
							</v-card-text>
						</v-card>
					</router-link>
				</v-col>
				<v-col cols="12">
					<router-link v-if="$route.path != '/oferta'" to="/oferta">
						<v-btn class="my-5 offer-button"  link x-large block color="#da5a33" outlined>{{ offersDescriptions.button_name }}</v-btn>
					</router-link>
				</v-col>
			</v-row>
		</v-container>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import slugify from '../../helpers/links/slug.js'

	export default{
		data(){
			return{
				offers: [],
				offersDescriptions: {},
				url,
				slugify
			}
		},
		created(){
			this.getOffers();
			this.getOffersDescriptions();
		},
		methods:{
			async getOffersDescriptions() {
				await axios.get('/api/offers_descriptions/get_one/1').then(res => this.offersDescriptions = res.data);
			},
			async getOffers() {
				let endpoint = `get_where?active=1`;
				if(this.$route.path == '/') endpoint = `get_where?active=1&home_page=1`;
				if(this.$route.path == '/admin-panel') endpoint = `get_all`;
				this.$store.commit('loading', true);
				await axios.get(`/api/offers/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.offers = res.data;
					this.$emit('blockDataEmit', this.offers);
				}).catch(err => {
					console.log(err);
					this.$store.commit('loading', false);
				})
			},
		},
		props: ['reloadFlag'],
		watch: {
			reloadFlag() {
				if(this.reloadFlag) this.getOffers();
			}
		},

	}
</script>

<style>
	.offer-button {
		transition: .15s all!important; 
	}
	.offer-button:hover{
		color:white!important;
		background-color: var(--first-color); 
	}
	.offer-card {
		cursor: pointer;
		height: 100%;
	}
	.offer-card:hover{
		box-shadow: 0 3px 1px -2px rgba(0,0,0,.2), 0 2px 2px 0 rgba(0,0,0,.14), 0 1px 5px 0 rgba(0,0,0,.12)!important;
	}
	.offer-card:hover .offer-card-photo{
		opacity: 0.6;
	}
</style>