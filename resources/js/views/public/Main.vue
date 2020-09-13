<template>
	<div>
		<Slider />
		<News />
		<AboutUs />
		<Offers />
	</div>
</template>

<script>
	import Slider from '../../components/pages/Slider'
	import AboutUs from '../../components/pages/AboutUs'
	import Offers from '../../components/pages/Offers'
	import News from '../../components/pages/News'

	export default{
		components: {
			Slider, AboutUs, Offers, News
		}
	}
</script>

