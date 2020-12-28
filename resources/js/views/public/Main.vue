<template>
	<div class="position-relative">
		<Slider />
		<News />
		<img class="eight-ball" width="auto" height="200px" :src="ball" alt="">
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

	export default{
		components: {
			Slider, AboutUs, Offers, News, LuckyNumber
		},
		computed: {
			ball() {
				return `${window.location.origin}/storage/img/layout/8.png`;
			}
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

