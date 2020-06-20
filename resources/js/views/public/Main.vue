<template>
	<div>
		<Slider />
		<AboutUs />
		<Offers />
	</div>
</template>

<script>
	import Slider from '../../components/pages/Slider'
	import AboutUs from '../../components/pages/AboutUs'
	import Offers from '../../components/pages/Offers'

	export default{
		components: {
			Slider, AboutUs, Offers
		}
	}
</script>

