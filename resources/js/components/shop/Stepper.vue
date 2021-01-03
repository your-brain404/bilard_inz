<template>
	<v-stepper v-model="e1">
		<v-stepper-header>
			<v-stepper-step :complete="e1 > 1" step="1" >{{ cart_descriptions.step_1 }}</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step :complete="e1 > 2" step="2" >{{ cart_descriptions.step_2 }}</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step :complete="e1 > 3" step="3">{{ cart_descriptions.step_3 }}</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step step="4">{{ cart_descriptions.step_4 }}</v-stepper-step>
		</v-stepper-header>

		<v-stepper-items>
			<v-stepper-content step="1">
				<div class="mb-12"  >
					<CartMenuListing />
				</div>

				<v-btn :disabled="cart.length == 0" color="primary" @click="e1 = 2" >{{ cart_descriptions.next }}</v-btn>

			</v-stepper-content>

			<v-stepper-content step="2">
				<div class="mb-12">
					<ShippingDetails :cart_descriptions="cart_descriptions" @shipping_details="shipping_details = $event" @e1="e1 = $event" :submit="shippingDetailsSubmit" @valid="shippingDetailsValid = $event" />
				</div>

				<v-btn :disabled="!shippingDetailsValid" color="primary" @click="shippingDetailsValidate">{{ cart_descriptions.next }}</v-btn>

				<v-btn @click="e1 = 1" text>{{ cart_descriptions.back }}</v-btn>
			</v-stepper-content>

			<v-stepper-content step="3">
				<div class="mb-12">
					<Payments @payments="payments = $event" @e1="e1 = $event" :submit="paymentsSubmit" @valid="paymentsValid = $event" />
				</div>
				<v-btn :disabled="!paymentsValid" color="primary" @click="paymentsValidate">{{ cart_descriptions.next }}</v-btn>
				<v-btn  @click="e1 = 2" text>{{ cart_descriptions.back }}</v-btn>
			</v-stepper-content>

			<v-stepper-content step="4">
				<div class="mb-12">
					<Summary :cart_descriptions="cart_descriptions" @cartData="cart_data = $event" :payments="payments" :shipping_details="shipping_details" />
				</div>
				<v-btn color="primary" @click="realize">{{ cart_descriptions.realize }}</v-btn>
				<v-btn @click="e1 = 3" text>{{ cart_descriptions.back }}</v-btn>
			</v-stepper-content>
		</v-stepper-items>
	</v-stepper>
</template>

<script>
	import CartMenuListing from './CartMenuListing' 
	import ShippingDetails from './ShippingDetails' 
	import Payments from './Payments' 
	import Summary from './Summary' 
	import axios from 'axios'

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
				cart_descriptions: {},
			}
		},
		components: {
			CartMenuListing, ShippingDetails, Payments, Summary
		},
		computed: {
			cart() {
				return this.$store.getters.cart;
			}  
		},
		watch: {
			e1() {
				localStorage.setItem('e1', this.e1);
			}
		},
		methods: {
			getCartDescriptions() {
				axios.get('/api/cart_descriptions/get_one/1').then(res => this.cart_descriptions = res.data);
			},
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
					this.$store.commit('setSnackbar', 'Pomyślnie złożono zamówienie!');
					this.$store.commit('loading', false);
					console.log(res)
				}).catch(err => {
					this.$store.commit('setSnackbar', 'Coś poszło nie tak, przepraszamy...');
					this.$store.commit('loading', false);
				})
			}
		},
		created() {
			this.getCartDescriptions();
			if(localStorage.getItem('e1') != null) {
				this.e1 = localStorage.getItem('e1');
			}
		}
	}
</script>