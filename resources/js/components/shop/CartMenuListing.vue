<template>
	<v-card :flat="$route.path == '/koszyk'" class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title">{{ cart_descriptions.step_1 }}</h3>
		</v-card-title>
		<v-divider></v-divider>
		<div class="d-flex justify-content-between align-items-center mb-2 flex-wrap" v-for="(product, i) in cart" :key="i">
			<div class="d-flex align-items-center product-data-container">
				<div class="cart-menu-product-photo bg-picture" :style="`background-image: url('${getUrl(product.product.photo)}')`"  :alt="product.product.alt"></div>
				<div class="ml-2 cart-menu-product-content">
					<p class="mb-0 cart-menu-product-title">{{ product.product.title }}</p>
					<div class="d-flex">
						<p :class="[{'discounted': product.product.discount }, 'mb-0']">{{ product.product.price.toFixed(2) }} {{ shop_descriptions.currency }}</p>
						<p class="pl-3" v-if="product.product.discount">{{ getDiscountedPrice(product.product).toFixed(2) }} {{ shop_descriptions.currency }}</p>
					</div>
				</div>
			</div>
			<div class="d-flex align-items-center product-amount-container">
				<v-btn small color="error" :disabled="product.amount == 1 || summary != undefined" @click="decreaseAmount(i)">
					<v-icon>mdi-{{ shop_descriptions.minus_icon }}</v-icon>
				</v-btn>
				<h2 class="px-3">{{ product.amount }}</h2>
				<v-btn small color="success" :disabled="product.amount == product.product.amount || summary != undefined" @click="increaseAmount(i)">
					<v-icon>mdi-{{ shop_descriptions.plus_icon }}</v-icon>
				</v-btn>
				<v-btn :disabled="summary != undefined" @click="deleteProduct(i)" class="ml-5" icon color="error">
					<v-icon>mdi-{{ shop_descriptions.delete }}</v-icon>
				</v-btn>
			</div>
		</div>
		<div v-if="cart.length == 0">
			<h2><router-link to="/sklep">{{ cart_descriptions.empty }}</router-link></h2>
		</div>

		<v-card-actions class="p-0 mt-9 d-flex flex-wrap justify-content-between sum-container">
			<div class="sum-item">
				<div class="mb-4" v-if="delivery != undefined">
					{{ cart_descriptions.delivery }} ({{ compDelivery }})
				</div>
				<div class="cart-menu-sum">
					{{ cart_descriptions.sum }} <span>{{ sum.toFixed(2) }} {{ shop_descriptions.currency }}</span>
				</div>
			</div>
			<router-link class="sum-item" v-if="$route.path != '/koszyk'" to="/koszyk">
				<v-btn color="primary" class="font-weight-normal w-100" @click="$emit('closeMenu')" >
					{{ cart_descriptions.go_to_cart }}
				</v-btn>
			</router-link>
		</v-card-actions>
	</v-card>
</template>

<script>
	import url from '../../helpers/photo/url'
	import axios from 'axios'

	export default {
		props: ['summary', 'delivery'],
		data() {
			return {
				shop_descriptions: {},
				cart_descriptions: {}
			}
		},
		computed: {
			cart() {
				return this.$store.getters.cart;
			},
			sum() {
				let sum = 0;
				this.cart.forEach(product => {
					let price = product.product.discount ? this.getDiscountedPrice(product.product) : product.product.price;
					sum += price * product.amount;
				})
				sum += this.compDeliveryPrice;
				this.$emit('sum', sum);
				return sum;
			},
			compDeliveryPrice() {
				return this.delivery == undefined ? 0 : this.delivery.price;
			},
			compDelivery() {
				return this.delivery.price == undefined ? '' : `${this.delivery.title} ${this.delivery.price.toFixed(2)} PLN`
			}
		},
		methods: {
			getShopDescriptions() {
				axios.get('/api/shop_descriptions/get_one/1').then(res => this.shop_descriptions = res.data);
			},
			getCartDescriptions() {
				axios.get('/api/cart_descriptions/get_one/1').then(res => this.cart_descriptions = res.data);
			},
			getUrl: src => url(src),
			increaseAmount(i) {
				this.cart[i].amount++;
				localStorage.setItem('cart', JSON.stringify(this.cart))
				this.$store.commit('cart', this.cart);
			},
			decreaseAmount(i) {
				this.cart[i].amount--;
				localStorage.setItem('cart', JSON.stringify(this.cart))
				this.$store.commit('cart', this.cart);
			},
			deleteProduct(i) {
				if(!confirm('Czy na pewno usunąć z koszyka przedmiot: ' + this.cart[i].product.title + '?')) return;
				this.cart.splice(i, 1);
				localStorage.setItem('cart', JSON.stringify(this.cart))
				this.$store.commit('cart', this.cart);
			},
			getDiscountedPrice: product => (product.price * ((100 - product.discount) / 100))

		},
		created() {
			this.getCartDescriptions();
			this.getShopDescriptions();
		}
	}
</script>

<style>
	@media(min-width: 500px) {
		a.sum-item {
			margin-left: .5rem;
		}
	}
	@media(max-width: 500px) {
		.sum-item {
			width: 100%;
			margin-bottom: .7rem;
		}

		.product-data-container, .product-amount-container {
			width: 100%;
		}
		.product-amount-container {
			margin-bottom: .7rem;
		}
	}


</style>