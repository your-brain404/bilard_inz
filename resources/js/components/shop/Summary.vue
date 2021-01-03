<template>
	<v-card flat class="p-3">
		<v-card-title class="p-0 mb-4">
			<h2 class="mb-0 cart-menu-title" style="font-size: 2.5rem">{{ cart_descriptions.step_4 }}</h2>
		</v-card-title>
		<v-row>
			<v-col cols="12" lg="6">
				<ShippingDetails :data="shipping_details" summary />
			</v-col>
			<v-col cols="12" lg="6">
				<Payments @delivery="delivery = $event" :data="payments" summary />
			</v-col>
			
		</v-row>
		<v-row>
			<v-col cols="12"  >
				<CartMenuListing @sum="sum = $event" :delivery="delivery" summary />
			</v-col>
		</v-row>
		
		
		
	</v-card>
</template>

<script>
	import CartMenuListing from './CartMenuListing' 
	import ShippingDetails from './ShippingDetails' 
	import Payments from './Payments' 

	export default {
		props: ['shipping_details', 'payments', 'cart_descriptions'],
		data() {
			return {
				delivery: {},
				sum: 0
			}
		},
		components: {
			CartMenuListing, ShippingDetails, Payments
		},
		computed: {
			cartData() {
				let data = {
					payments: this.payments,
					sum: this.sum,
					shipping_details: this.shipping_details,
					products: JSON.parse(localStorage.getItem('cart'))
				}
				
				return data;
			}
		},
		watch: {
			cartData: {
				deep: true,
				handler() {
					this.$emit('cartData', this.cartData);
				}
			}
		}

	}
</script>