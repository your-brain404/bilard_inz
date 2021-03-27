<template>
	<div class="position-relative" style="overflow: hidden;">
		<!-- <v-lazy :options="{ threshold: .5 }" transition="fade-transition" min-height="80vh" v-model="slider"> -->
			<Slider />
		<!-- </v-lazy> -->
		<v-lazy :options="{ threshold: .5 }" transition="fade-transition" min-height="568px" v-model="news">
			<News />
		</v-lazy>
		<img class="eight-ball" width="auto" height="200px" v-lazy="url(layoutElements.eight_ball).replace('.webp', '')" alt="layoutElements.eight_ball_alt">
		<v-lazy v-model="aboutUs" :options="{ threshold: .5 }" transition="fade-transition" min-height="552px">
			<AboutUs />
		</v-lazy>
		<v-lazy min-height="652px" :options="{ threshold: .5 }" transition="fade-transition" v-model="offers">
			<Offers />
		</v-lazy>
		<v-lazy v-if="showLuckyNumber" min-height="452px" :options="{ threshold: .5 }" transition="fade-transition" v-model="luckyNumber">
			<LuckyNumber @showLuckyNumber="showLuckyNumber = $event" />
		</v-lazy>
	</div>
</template>

<script>
	import Slider from '../../components/pages/Slider'
	import AboutUs from '../../components/pages/AboutUs'
	import Offers from '../../components/pages/Offers'
	import News from '../../components/pages/News'
	import LuckyNumber from '../../components/pages/LuckyNumber'
	import axios from 'axios'
	import url from '@/helpers/photo/url'

	export default{
		data() {
			return {
				layoutElements: {},
				url,
				slider: false,
				news: false,
				aboutUs: false,
				offers: false,
				luckyNumber: false,
				showLuckyNumber: true
			}
		},
		components: {
			Slider, AboutUs, Offers, News, LuckyNumber
		},
		created() {
			axios.get('/api/layout_elements/get_one/1').then(res => this.layoutElements = res.data);
		}
	}
</script>

<style>
	.eight-ball {
		animation-name: eight_ball;
		animation-duration: 10s;
		position: absolute;
		animation-iteration-count: infinite;
	}

	@keyframes eight_ball {
		from {
			left: -100%;
			transform: rotateZ(0deg);
		}

		to {
			left: 100%;
			transform: rotateZ(720deg);
		}
	}
</style>

