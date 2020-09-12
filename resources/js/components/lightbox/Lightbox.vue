<template>
	<v-row justify="center">
		<v-col cols="12">
			<v-row align="center">
				<v-overlay :opacity="0.46" :value="props.lightbox" :z-index="5">
					<v-row class="d-flex justify-content-end">
						<v-icon color="white" @click="$emit('closeLightbox')">mdi-close</v-icon>
					</v-row>
					<v-row>
						<v-col cols="12">
							<img class="img-fluid" :src="getUrl(activePhoto)">
						</v-col>
					</v-row>
					<v-row class="d-flex justify-content-center">
						<v-col @click="activePhoto = photo" v-for="photo in props.gallery" cols="2">
							<div class="bg-picture" :style="`background-image: url('${getUrl(photo)}')`" ></div>
						</v-col>
					</v-row>
				</v-overlay>
			</v-row>
		</v-col>
	</v-row>
</template>

<script>
	import url from '../../helpers/photo/url.js'

	export default {
		props:['props'],
		methods:{
			getUrl(src){
				return url(src);
			},
		},
		data(){
			return{
				activePhoto: ''
			}
		},
		watch:{
			props(){
				this.activePhoto = this.props.gallery[this.props.activePhotoId];
			}
		}
	}
</script>

<style>
	.bg-picture{
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		width: 10vw;
		height: 10vw;
		cursor: pointer;
	}
</style>