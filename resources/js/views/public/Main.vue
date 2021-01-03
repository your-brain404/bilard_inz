<template>
	<div class="position-relative" style="overflow: hidden;">
		<Slider />
		<News />
		<img class="eight-ball" width="auto" height="200px" :src="url(layout_elements.eight_ball)" alt="layout_elements.eight_ball_alt">
		<AboutUs />
		<Offers />
		<LuckyNumber />
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
				layout_elements: {},
				url
			}
		},
		components: {
			Slider, AboutUs, Offers, News, LuckyNumber
		},
		created() {
			axios.get('/api/layout_elements/get_one/1').then(res => this.layout_elements = res.data);
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

