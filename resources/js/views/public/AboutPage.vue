<template>
	<v-container>
		<AboutUs />
		<Partners />
	</v-container>
</template>

<script>
	import AboutUs from '../../components/pages/AboutUs'
	import Partners from '../../components/pages/Partners'

	export default {
		components: {
			AboutUs, Partners
		}
	}
</script>