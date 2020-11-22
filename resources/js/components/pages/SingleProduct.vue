v<template>
	<v-container class="py-12 cup">
		<v-row>
			<v-col>
				<div class="breadcrumb-container">
					<router-link class="white--text breadcrumb-link" to="/">
						<h3 class="breadcrumb-item ml-0">Strona główna </h3> 
					</router-link>
					> 
					<router-link class="white--text breadcrumb-link" to="/sklep">
						<h3 class="breadcrumb-item">Sklep </h3>
					</router-link> 
					> 
					<h3 class="breadcrumb-item font-weight-bold">{{ shop_product.title }}</h3>
				</div>
			</v-col>
		</v-row>
		<v-row>

			<v-col cols="12" md="7">
				<v-card style="height: 500px" class="d-flex flex-column justify-content-between">
					<v-zoom v-if="activePhoto == -1" :img="getUrl(shop_product.photo)" width="100%" ></v-zoom>
					<v-zoom v-for="(item, i) in shop_items" :key="i" v-if="activePhoto == i" :img="getUrl(item.photo)" width="100%" ></v-zoom>
					<div class="d-flex">
						<v-col @click="activePhoto = -1" cols="2">
							<div class="bg-picture shop-item-photo" :style="`background-image: url('${getUrl(shop_product.photo)}')`"></div>
						</v-col>
						<v-col @click="activePhoto = i" v-for="(item, i) in shop_items" :key="i" cols="2">
							<div class="bg-picture shop-item-photo" :style="`background-image: url('${getUrl(item.photo)}')`"></div>
						</v-col>
					</div>
					
				</v-card>
			</v-col>
			<v-col cols="12" md="5" class="d-flex flex-column justify-content-center">
				<h2 class="font-weight-bold mb-0">{{ getProductOrItem('title') }}</h2>
				<p>{{ getProductOrItem('subtitle') }}</p>
				<h1 class="font-weight-bold d-flex">
					<div class="mr-2">Cena: </div>
					<div>
						<div v-if="getProductOrItem('price')" :class="[{'discounted': getProductOrItem('discount') }]">{{ getProductOrItem('price').toFixed(2) }} PLN </div>
						<div v-if="getProductOrItem('discount')">
							{{  (getProductOrItem('price') * ((100 - getProductOrItem('discount')) / 100)).toFixed(2)  }} PLN
							<br>
							<span class="first-color">Rabat {{ getProductOrItem('discount') }}%</span>
						</div>
					</div>
				</h1>
				<h2 class="font-weight-bold">Ilość: </h2>
				<div class="d-flex">
					<v-btn color="error" :disabled="amount == 1" @click="amount--">
						<v-icon>mdi-minus</v-icon>
					</v-btn>
					<h2 class="px-3">{{ amount }}</h2>
					<v-btn color="success" :disabled="amount == getProductOrItem('amount')" @click="amount++">
						<v-icon>mdi-plus</v-icon>
					</v-btn>
				</div>
				<v-btn color="primary" x-large outlined class="mt-5">
					<v-icon left>mdi-cart-plus</v-icon>
					<span>Dodaj do koszyka</span>
				</v-btn>
			</v-col>
		</v-row>
		
		<v-row>
			<v-col> <p v-html="getProductOrItem('description')"></p> </v-col>
		</v-row>

		<v-row>
			<v-col v-for="(photo, i) in gallery" :key="i" cols="12" lg="4" @click="lightbox = true; activePhotoId = i+1">
				<div class="bg-picture single-news-photo" :style="`background-image: url('${getUrl(photo.path)}')`"></div>
			</v-col>
			<Lightbox :lightbox="lightbox" :gallery="galleryLightbox" :activePhotoId="activePhotoId" @closeLightbox="lightbox = false"/>
		</v-row>
		

	</v-container>
</template>

<script>
	import axios from 'axios'
	import Lightbox from '../lightbox/Lightbox'
	import url from '../../helpers/photo/url.js'
	import vZoom from 'vue-zoom'
	

	export default {
		data() {
			return {
				shop_product: {},
				gallery: [],
				galleryLightbox: [],
				lightbox: false,
				activePhotoId: 0,
				photoStyle: {},
				shop_items: [],
				activePhoto: -1,
				amount: 1
			}
		},
		methods: {
			getProductOrItem(field) {
				return this.activePhoto == -1 ? this.shop_product[field] : (!this.shop_items[this.activePhoto][field] ? this.shop_product[field] : this.shop_items[this.activePhoto][field]);
			},
			getUrl: src => url(src),
			getShopItems() {
				axios.get(`/api/shop_items/get_where?active=1&product_id=${this.shop_product.id}`).then(res => {
					this.shop_items = res.data;
				}).catch(err => {
					this.$store.commit('setSnackbar', 'Nie udało się załadować wariantów...');
				})
			},
			getShopProduct() {
				this.$store.commit('loading', true);
				axios.get(`/api/shop_products/get_one/${this.$route.params.id}`).then(res => {
					this.shop_product = res.data;
					this.$store.commit('loading', false);
					this.getShopItems();
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			}, 
			setGalleryLightbox(gallery){
				gallery.forEach(photo => this.galleryLightbox.push(photo.path));
			},  
			getGallery() {
				this.$store.commit('loading', true);
				axios.get(`/api/gallery/get_photos/shop_products/${this.$route.params.id}`).then(res => {
					this.gallery = res.data;
					this.setGalleryLightbox(res.data);
					this.$store.commit('loading', false);
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			},
		},
		created() {
			this.getShopProduct();
			this.getGallery();
			
		},
		components: {
			Lightbox, vZoom
		},
		
	}
</script>

<style>

	.shop-item-photo {
		background-size: contain;
		margin:auto;
	}

</style>