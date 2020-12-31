<template>
	<div class="text-center">
		<div>
			<v-btn class="header-button" :color="color ? color : ''"  icon>
				<v-icon>mdi-cart</v-icon>
			</v-btn>
			<span>Koszyk</span>
		</div>
		<v-menu @input="v => v || closeMenu()" v-model="menu" :close-on-content-click="false" >
			<CartMenuListing @closeMenu="menu = false"/>
		</v-menu>
	</div>
</template>

<script>
	import url from '../../helpers/photo/url'
	import CartMenuListing from './CartMenuListing'

	export default {
		props: ['color', 'menu'],
		components: {
			CartMenuListing
		},
		methods: {
			closeMenu() {
				this.$emit('closeMenu');
			}
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