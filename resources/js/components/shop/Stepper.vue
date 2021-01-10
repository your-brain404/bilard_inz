<template>
	<v-stepper v-model="e1">
		<v-stepper-header>
			<v-stepper-step :complete="e1 > 1" step="1" >{{ cartDescriptions.step_1 }}</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step :complete="e1 > 2" step="2" >{{ cartDescriptions.step_2 }}</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step :complete="e1 > 3" step="3">{{ cartDescriptions.step_3 }}</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step step="4">{{ cartDescriptions.step_4 }}</v-stepper-step>
		</v-stepper-header>

		<v-stepper-items>
			<v-stepper-content step="1">
				<div class="mb-12"  >
					<CartMenuListing />
				</div>

				<v-btn :disabled="cart.length == 0" color="primary" @click="e1 = 2" >{{ cartDescriptions.next }}</v-btn>

			</v-stepper-content>

			<v-stepper-content step="2">
				<div class="mb-12">
					<ShippingDetails :cartDescriptions="cartDescriptions" @shipping_details="shipping_details = $event" @e1="e1 = $event" :submit="shippingDetailsSubmit" @valid="shippingDetailsValid = $event" />
				</div>

				<v-btn :disabled="!shippingDetailsValid" color="primary" @click="shippingDetailsValidate">{{ cartDescriptions.next }}</v-btn>

				<v-btn @click="e1 = 1" text>{{ cartDescriptions.back }}</v-btn>
			</v-stepper-content>

			<v-stepper-content step="3">
				<div class="mb-12">
					<Payments :deliveryOptions="deliveryOptions" :cartDescriptions="cartDescriptions" @payments="payments = $event" @e1="e1 = $event" :submit="paymentsSubmit" @valid="paymentsValid = $event" />
				</div>
				<v-btn :disabled="!paymentsValid" color="primary" @click="paymentsValidate">{{ cartDescriptions.next }}</v-btn>
				<v-btn  @click="e1 = 2" text>{{ cartDescriptions.back }}</v-btn>
			</v-stepper-content>

			<v-stepper-content step="4">
				<div class="mb-12">
					<Summary :deliveryOptions="deliveryOptions" :cartDescriptions="cartDescriptions" @cartData="cart_data = $event" :payments="payments" :shipping_details="shipping_details" />
				</div>
				<v-btn color="primary" @click="realize">{{ cartDescriptions.realize }}</v-btn>
				<v-btn @click="e1 = 3" text>{{ cartDescriptions.back }}</v-btn>
			</v-stepper-content>
		</v-stepper-items>
		<DeliveryOptions @blockDataEmit="deliveryOptions = $event" />
	</v-stepper>
</template>

<script>
	import CartMenuListing from './CartMenuListing' 
	import ShippingDetails from './ShippingDetails' 
	import Payments from './Payments' 
	import Summary from './Summary' 
	import axios from 'axios'
	import DeliveryOptions from '@/components/emit-data-blocks/DeliveryOptions'

	export default {
		data () {
			return {
				e1: 4,
				shippingDetailsValid: false,
				shippingDetailsSubmit: false,
				paymentsValid: false,
				paymentsSubmit: false,
				shipping_details: {},
				payments: {},
				cart_data: {},
				deliveryOptions: []
			}
		},
		components: {
			CartMenuListing, ShippingDetails, Payments, Summary, DeliveryOptions
		},
		computed: {
			cart() {
				return this.$store.getters.cart;
			},
			cartDescriptions() {
				return this.$store.getters.cartDescriptions;
			} 
		},
		watch: {
			e1() {
				localStorage.setItem('e1', this.e1);
			}
		},
		methods: {
			shippingDetailsValidate() {
				this.shippingDetailsSubmit = true;
				setTimeout(() => this.shippingDetailsSubmit = false, 20)
			},
			paymentsValidate() {
				this.paymentsSubmit = true;
				setTimeout(() => this.paymentsSubmit = false, 20)
			},
			realize() {
				this.$store.commit('loading', true);
				axios.post('/api/shop_orders/add', this.cart_data).then(res => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.order_success);
					this.$store.commit('loading', false);
					console.log(res)
				}).catch(err => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.error);
					this.$store.commit('loading', false);
				})
			}
		},
		created() {
			if(localStorage.getItem('e1') != null) {
				this.e1 = localStorage.getItem('e1');
			}
		}
	}
</script>