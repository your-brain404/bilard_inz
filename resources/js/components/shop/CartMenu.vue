<template>
	<div class="text-center">
		
		<v-menu @input="v => v || closeMenu()" offset-y v-model="menu" :close-on-content-click="false" >
			<template #activator="{ on }">
				<div v-on="on">
					<v-btn class="header-button" :color="color ? color : ''"  icon>
						<v-icon>mdi-{{ cart_descriptions.cart_icon }}</v-icon>
					</v-btn>
					<span>{{ cart_descriptions.title }}</span>
				</div>
			</template>
			<CartMenuListing @closeMenu="menu = false"/>
		</v-menu>
	</div>
</template>

<script>
	import CartMenuListing from './CartMenuListing'
	import axios from 'axios'

	export default {
		props: ['color', 'menu'],
		data() {
			return {
				cart_descriptions: {}
			}
		},
		components: {
			CartMenuListing
		},
		methods: {
			closeMenu() {
				this.$emit('closeMenu');
			}
		},
		created() {
			axios.get('/api/cart_descriptions/get_one/1').then(res => this.cart_descriptions = res.data);
		}

	}
</script>

<style>
	.cart-menu-product-photo {
		width: 60px;
		height: 60px;
		border-radius: 50%;
	}

	.cart-menu-product-title {
		font-weight: 500;
		font-size: 1rem;
	}
	.cart-menu-product-content {

		line-height: 17px;
	}

	.cart-menu-sum {
		background-color: var(--first-color);
		color: white;
		font-size: 1rem;
		padding: 1rem;
	}

	.cart-menu-sum span {
		font-size: 2rem;
		font-weight: 700;
		margin-left: .5rem;
	}
	.cart-menu-title {
		font-weight: 700;
		color: var(--first-color);
		font-size: 2rem;
	}
</style>