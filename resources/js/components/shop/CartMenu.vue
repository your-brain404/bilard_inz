<template>
	<div class="text-center">
		<v-menu v-model="menu" :close-on-content-click="false" :nudge-width="600" nudge-bottom="50" nudge-right="120" offset-x >
			<template v-slot:activator="{ on, attrs }">
				<v-btn v-bind="attrs" v-on="on" icon>
					<v-icon>mdi-cart</v-icon>
				</v-btn>
			</template>

			<v-card>
				<div class="d-flex justify-content-between" v-for="(product, i) in products" :key="i">
					<div>
						<img class="cart-menu-product-photo" :src="getUrl(product.photo)" alt="product.alt">
						<p>{{ product.title }}</p>
					</div>
					<div>
						<v-btn color="error" :disabled="amount == 1" @click="amount--">
							<v-icon>mdi-minus</v-icon>
						</v-btn>
						<h2 class="px-3">{{ amount }}</h2>
						<v-btn color="success" :disabled="amount == getProductOrItem('amount')" @click="amount++">
							<v-icon>mdi-plus</v-icon>
						</v-btn>
					</div>
				</div>

				<v-card-actions>
					<v-spacer></v-spacer>

					<v-btn text @click="menu = false" >
						Anuluj
					</v-btn>
					<v-btn color="primary" text @click="menu = false" >
						Kup Teraz
					</v-btn>
				</v-card-actions>
			</v-card>
		</v-menu>
	</div>
</template>

<script>
	import url from '../../helpers/photo/url'

	export default {
		data() {
			return {
				menu: false,
			}
		},

		computed: {
			products() {
				return this.$store.getters.products;
			}
		},
		methods: {
			getUrl: src => url(src),
			getProducts() {
				
			}
		},
		watch: {
			products() {
				if(products.length > 0) {
					this.getProducts();
				}
			}
		}


	}
</script>

<style>
	.cart-menu-product-photo {
		width: 100px;
		height: auto;
	}
</style>