<template>
	<v-container>
		<v-row class="justify-content-center">
			<h2 class="about-title font-weight-bold text-center first-color">{{ partners_descriptions.title }}</h2>
		</v-row>
		<carousel :items="carouselItems" :autoplayHoverPause="true" :responsive="{0: {items: 1}, 600:{items:2,},1024:{items:3}}" :rewind="true" :autoplayTimeout="1000" :autoplay="true" :dots="false" :loop="true" :nav="false" v-if="partners.length > 0" class="">
			<img v-for="(partner, i) in partners" :key="i" class="pa-5" :src="getUrl(partner.photo)" alt="">

		</carousel>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import carousel from 'vue-owl-carousel2'

	export default {
		props:['deleteFlag'],
		data() {
			return {
				partners: [],
				screenWidth: $(document).width(),
				carouselItems: 3,
				partners_descriptions: {}
			}
		},
		
		methods:{
			getPartnersDescriptions() {
				axios.get('/api/partners_descriptions/get_one/1').then(res => this.partners_descriptions = res.data);
			},
			getPartners(){
				let endpoint = 'get_all';
				if(this.$route.path == '/o-klubie') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				axios.get(`/api/partners/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.partners = res.data;
					this.$emit('blockDataEmit', this.partners);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getUrl: src => url(src),
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
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getPartners();
				}
			},
			
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
</style>