<template>
	<v-container>
		<v-row class="justify-content-center">
			<h2 class="about-title font-weight-bold text-center first-color">{{ partnersDescriptions.title }}</h2>
		</v-row>
		<carousel :items="carouselItems" :autoplayHoverPause="true" :responsive="{0: {items: 1}, 600:{items:2,},1024:{items:3}}" :rewind="true" :autoplayTimeout="1000" :autoplay="true" :dots="false" :loop="true" :nav="false" v-if="partners.length > 0" class="">
			<img v-for="(partner, i) in partners" :key="i" class="pa-5" :src="url(partner.photo)" alt="">

		</carousel>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import carousel from 'vue-owl-carousel2'

	export default {
		data() {
			return {
				partners: [],
				screenWidth: $(document).width(),
				carouselItems: 3,
				partnersDescriptions: {},
				url
			}
		},
		
		methods:{
			async getPartnersDescriptions() {
				await axios.get('/api/partners_descriptions/get_one/1').then(res => this.partnersDescriptions = res.data);
			},
			async getPartners(){
				let endpoint = 'get_all';
				if(this.$route.path == '/o-klubie') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				await axios.get(`/api/partners/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.partners = res.data;
					this.$emit('blockDataEmit', this.partners);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			setCarouselItems() {
				if(this.screenWidth < 768) this.carouselItems = 1;
				if(this.screenWidth < 992) this.carouselItems = 2;
			}
		},
		created(){
			this.getPartners();
			this.setCarouselItems();
			this.getPartnersDescriptions();
		},
		props: ['reloadFlag'],
		watch: {
			reloadFlag() {
				if(this.reloadFlag) this.getPartners();
			}
		},
		components: {
			carousel
		},
	}
</script>

<style>
	.owl-stage {
		display: flex;
		align-items: center;
	}

	.owl-item {
		background-color: white!important;
	}
</style>