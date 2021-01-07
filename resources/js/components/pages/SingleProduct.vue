v<template>
	<v-container class="py-12 cup">
		<v-row>
			<v-col>
				<Breadcrumb link="/sklep" :title="shop_product.title" :category="shop_descriptions.title" />
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
					<div class="mr-2">{{ shop_descriptions.price }}</div>
					<div>
						<div v-if="getProductOrItem('price')" :class="[{'discounted': getProductOrItem('discount') }]">{{ getProductOrItem('price').toFixed(2) }} {{ shop_descriptions.currency }} </div>
						<div v-if="getProductOrItem('discount')">
							{{  (getProductOrItem('price') * ((100 - getProductOrItem('discount')) / 100)).toFixed(2)  }} {{ shop_descriptions.currency }}
							<br>
							<span class="first-color">{{ shop_descriptions.discount }} {{ getProductOrItem('discount') }}%</span>
						</div>
					</div>
				</h1>
				<h2 class="font-weight-bold">{{ shop_descriptions.amount }}</h2>
				<div v-if="maxAmount != 0" class="d-flex">
					<v-btn color="error" :disabled="amount == 1" @click="amount--">
						<v-icon>mdi-{{ shop_descriptions.minus_icon }}</v-icon>
					</v-btn>
					<h2 class="px-3">{{ amount }}</h2>
					<v-btn color="success" :disabled="amount == maxAmount" @click="amount++">
						<v-icon>mdi-{{ shop_descriptions.plus_icon }}</v-icon>
					</v-btn>
				</div>
				<div v-else>{{ shop_descriptions.max_amount }}</div>
				<v-btn :disabled="maxAmount == 0" @click="addToCart" color="primary" x-large outlined class="mt-5">
					<v-icon left>mdi-{{ shop_descriptions.add_to_cart_icon }}</v-icon>
					<span>{{ shop_descriptions.add_to_cart }}</span>
				</v-btn>
				<router-link to="/koszyk" class="w-100">
					<v-btn color="primary" x-large class="mt-5 w-100">
						<v-icon left>mdi-{{ shop_descriptions.buy_now_icon }}</v-icon>
						<span>{{ shop_descriptions.buy_now }}</span>
					</v-btn>
				</router-link>
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
	import Breadcrumb from '@/components/breadcrumb/Breadcrumb';

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
				amount: 1,
				maxAmount: 0,
				shop_descriptions: {}
			}
		},
		computed: {
			product() {
				return this.activePhoto == -1 ? this.shop_product : this.shop_items[this.activePhoto];
			},
			cart() {
				return this.$store.getters.cart;
			}
		},
		watch: {
			cart: {
				deep: true,
				handler() {
					this.setMaxAmount()
				}
			}
		},
		methods: {
			async getShopDescriptions() {
				await axios.get('/api/shop_descriptions/get_one/1').then(res => this.shop_descriptions = res.data);
			},
			setMaxAmount() {
				this.maxAmount = this.getMaxAmount();
			},
			getProductIndex(cart, product) {
				let index = -1;
				cart.forEach((prod, i) => prod.product.id == product.id ? index = i : true);
				return index;
			},
			getMaxAmount() {
				let cart = JSON.parse(localStorage.getItem('cart'));
				let max = this.product.amount;
				if(cart != null) {
					let productIndex = this.getProductIndex(cart, this.product);
					if(productIndex != -1) max -= cart[productIndex].amount;
				}
				return max;
			},
			
			addToCart() {
				let cart = JSON.parse(localStorage.getItem('cart'));
				if(cart == null) cart = [];
				let productIndex = this.getProductIndex(cart, this.product);
				if(productIndex != -1) {
					cart[productIndex].amount += this.amount;
				} else {
					cart.push({
						product: this.product,
						amount: this.amount
					})
				}
				localStorage.setItem('cart', JSON.stringify(cart))
				this.$store.commit('cart', cart);
				this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.add_to_cart);
				this.amount = 1;
			},
			getProductOrItem(field) {
				return this.activePhoto == -1 ? this.shop_product[field] : (!this.shop_items[this.activePhoto][field] ? this.shop_product[field] : this.shop_items[this.activePhoto][field]);
			},
			getUrl: src => url(src),
			async getShopItems() {
				await axios.get(`/api/shop_items/get_where?active=1&product_id=${this.shop_product.id}`).then(res => {
					this.shop_items = res.data;
					this.setMaxAmount();
				}).catch(err => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.shop_items_error);
				})
			},
			async getShopProduct() {
				this.$store.commit('loading', true);
				await axios.get(`/api/shop_products/get_one/${this.$route.params.id}`).then(res => {
					this.shop_product = res.data;
					this.$store.commit('loading', false);
					this.getShopItems();
					this.$emit('meta_title', res.data.title)
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			}, 
			setGalleryLightbox(gallery){
				gallery.forEach(photo => this.galleryLightbox.push(photo.path));
			},  
			async getGallery() {
				this.$store.commit('loading', true);
				await axios.get(`/api/gallery/get_photos/shop_products/${this.$route.params.id}`).then(res => {
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
			this.getShopDescriptions();
		},
		components: {
			Lightbox, vZoom, Breadcrumb
		},
		
	}
</script>

<style>

	.shop-item-photo {
		background-size: contain;
		margin:auto;
	}

</style>