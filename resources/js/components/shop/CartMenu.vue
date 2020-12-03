<template>
	<div class="text-center">
		<v-menu v-model="menu" :close-on-content-click="false" :nudge-width="600" nudge-bottom="50" nudge-right="120" offset-x >
			<template v-slot:activator="{ on, attrs }">
				<v-btn v-bind="attrs" v-on="on" icon>
					<v-icon>mdi-cart</v-icon>
				</v-btn>
			</template>

			<CartMenuListing />
		</v-menu>
	</div>
</template>

<script>
	import url from '../../helpers/photo/url'
	import CartMenuListing from './CartMenuListing'

	export default {
		data() {
			return {
				menu: false,
			}
		},
		components: {
			CartMenuListing
		},

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