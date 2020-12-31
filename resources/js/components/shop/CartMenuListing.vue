<template>
	<v-card :flat="$route.path == '/koszyk'" class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title">Koszyk</h3>
		</v-card-title>
		<v-divider></v-divider>
		<div class="d-flex justify-content-between align-items-center mb-2" v-for="(product, i) in cart" :key="i">
			<div class="d-flex align-items-center">
				<div class="cart-menu-product-photo bg-picture" :style="`background-image: url('${getUrl(product.product.photo)}')`"  :alt="product.product.alt"></div>
				<div class="ml-2 cart-menu-product-content">
					<p class="mb-0 cart-menu-product-title">{{ product.product.title }}</p>
					<div class="d-flex">
						<p :class="[{'discounted': product.product.discount }, 'mb-0']">{{ product.product.price.toFixed(2) }} PLN</p>
						<p class="pl-3" v-if="product.product.discount">{{ getDiscountedPrice(product.product).toFixed(2) }} PLN</p>
					</div>
				</div>
			</div>
			<div class="d-flex align-items-center">
				<v-btn small color="error" :disabled="product.amount == 1 || summary != undefined" @click="decreaseAmount(i)">
					<v-icon>mdi-minus</v-icon>
				</v-btn>
				<h2 class="px-3">{{ product.amount }}</h2>
				<v-btn small color="success" :disabled="product.amount == product.product.amount || summary != undefined" @click="increaseAmount(i)">
					<v-icon>mdi-plus</v-icon>
				</v-btn>
				<v-btn :disabled="summary != undefined" @click="deleteProduct(i)" class="ml-5" icon color="error">
					<v-icon>mdi-delete</v-icon>
				</v-btn>
			</div>
		</div>
		<div v-if="cart.length == 0">
			<h2>Twój koszyk jest pusty! Odwiedź zakładkę <router-link to="/sklep">Sklep!</router-link></h2>
		</div>

		<v-card-actions class="p-0 mt-9 d-flex justify-content-between">
			<div>
				<div class="mb-4" v-if="delivery != undefined">
					+ przesyłka ({{ compDelivery }})
				</div>
				<div class="cart-menu-sum">
					Razem: <span>{{ sum.toFixed(2) }} PLN</span>
				</div>
			</div>
			<router-link  v-if="$route.path != '/koszyk'" to="/koszyk">
				<v-btn  color="primary" class="font-weight-normal" @click="$emit('closeMenu')" >
					Przejdź do koszyka!
				</v-btn>
			</router-link>
		</v-card-actions>
	</v-card>
</template>

<script>
	import url from '../../helpers/photo/url'

	export default {
		props: ['summary', 'delivery'],
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
	}
</script>