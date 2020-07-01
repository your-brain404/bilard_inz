<template>
	<v-carousel hide-delimiters cycle>
		<v-carousel-item class="slider-background" v-for="(slide,i) in slides" :key="i" :src="slide.src">
			<v-row class="fill-height flex-column" align="center" justify="center">
				<h2 class="slider-title font-weight-bold first-color">{{ slide.title }}</h2>
				<div class="slider-subtitle white--text font-weight-bold">{{ slide.subtitle }}</div>
			</v-row>
		</v-carousel-item>
	</v-carousel>
</template>

<script>
	export default{
		data(){
			return{
				slides: [
				{id: 1, src: '../storage/img/slider/mlodzi_ludzie.jpg', title: 'Bilard', subtitle: 'Oferujemy wysokiej jakości stoły bilardowe'},
				{id: 2, src: '../storage/img/slider/tenis_stolowy.jpg', title: 'Tenis stołowy', subtitle: 'Posiadamy także stół do tenisa stołowego'},
				{id: 3,src: '../storage/img/slider/dart.jpg', title: 'Dart', subtitle: 'W ofercie także maszyna do gry w Dart'},
				],
			}
		},
		created(){
			this.$emit('blockDataEmit', this.slides);
		}
	}
</script>

<style>
	.slider-title{
		font-size: 3rem;
		text-shadow: 0 0 5px black;
	}
	.slider-subtitle{
		font-size: 1.5rem;
		text-shadow: 0px 0px 10px black;
	}
</style>