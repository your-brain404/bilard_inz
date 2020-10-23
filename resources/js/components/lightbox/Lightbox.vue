<template>
	<div class="lightbox">
		<v-dialog :scrollable="false" @input="v => v || close()" :value="lightbox" :z-index="5" >
			<v-container >
				<v-row >
					<v-col cols="12" class="d-flex justify-content-center" @click="close">
						<img class="" width="75%" height="auto" :src="getUrl(activePhoto)">
					</v-col>
				</v-row>
				<v-row class="d-flex justify-content-center">
					<v-col @click="activePhoto = photo" v-for="(photo, i) in gallery" :key="i" cols="2">
						<div class="bg-picture mx-auto " :style="`background-image: url('${getUrl(photo)}')`" ></div>
					</v-col>
				</v-row>
			</v-container>
		</v-dialog>
	</div>
</template>

<script>
	import url from '../../helpers/photo/url.js'

	export default {
		props:['gallery', 'activePhotoId', 'lightbox'],
		methods:{
			getUrl: src => url(src),
			close() {
				this.$emit('closeLightbox')
			}
		},
		data(){
			return{
				activePhoto: ''
			}
		},
		watch:{
			lightbox(){
				this.activePhoto = this.gallery[this.activePhotoId];
			}
		}
	}
</script>

<style>
	.bg-picture{
		background-position: center;
		background-size: cover;
		background-repeat: no-repeat;
		width: 100%;
		height: 100px;
		cursor: pointer;
	}

	.lightbox-gallery-photo {
		width: 100%;
		height: 10vw;
	}
	.v-dialog {
		box-shadow: unset!important;
	}


</style>