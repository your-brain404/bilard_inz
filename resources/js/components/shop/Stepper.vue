<template>
	<v-stepper v-model="e1">
		<v-stepper-header>
			<v-stepper-step :complete="e1 > 1" step="1" >Koszyk</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step :complete="e1 > 2" step="2" >Dane kupującego</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step :complete="e1 > 3" step="3">Dostawa i Płatność</v-stepper-step>
			<v-divider></v-divider>
			<v-stepper-step step="4">Podsumowanie</v-stepper-step>
		</v-stepper-header>

		<v-stepper-items>
			<v-stepper-content step="1">
				<div class="mb-12"  >
					<CartMenuListing />
				</div>

				<v-btn :disabled="cart.length == 0" color="primary" @click="e1 = 2" >Dalej</v-btn>

			</v-stepper-content>

			<v-stepper-content step="2">
				<div class="mb-12">
					<ShippingDetails @shipping_details="shipping_details = $event" @e1="e1 = $event" :submit="shippingDetailsSubmit" @valid="shippingDetailsValid = $event" />
				</div>

				<v-btn :disabled="!shippingDetailsValid" color="primary" @click="shippingDetailsValidate">Dalej</v-btn>

				<v-btn @click="e1 = 1" text>Wróć</v-btn>
			</v-stepper-content>

			<v-stepper-content step="3">
				<div class="mb-12">
					<Payments @payments="payments = $event" @e1="e1 = $event" :submit="paymentsSubmit" @valid="paymentsValid = $event" />
				</div>
				<v-btn :disabled="!paymentsValid" color="primary" @click="paymentsValidate">Dalej</v-btn>
				<v-btn  @click="e1 = 2" text>Wróć</v-btn>
			</v-stepper-content>

			<v-stepper-content step="4">
				<div class="mb-12">
					<Summary @cartData="cart_data = $event" :payments="payments" :shipping_details="shipping_details" />
				</div>
				<v-btn color="primary" @click="realize">Zrealizuj zamówienie</v-btn>
				<v-btn @click="e1 = 3" text>Wróć</v-btn>
			</v-stepper-content>
		</v-stepper-items>
	</v-stepper>
</template>

<script>
	import CartMenuListing from './CartMenuListing' 
	import ShippingDetails from './ShippingDetails' 
	import Payments from './Payments' 
	import Summary from './Summary' 

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
				cart_data: {}
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
			shippingDetailsValidate() {
				this.shippingDetailsSubmit = true;
				setTimeout(() => this.shippingDetailsSubmit = false, 20)
			},
			paymentsValidate() {
				this.paymentsSubmit = true;
				setTimeout(() => this.paymentsSubmit = false, 20)
			},
			realize() {
				console.log(this.cart_data);
			}
		},
		created() {
			if(localStorage.getItem('e1') != null) {
				this.e1 = localStorage.getItem('e1');
			}
		}
	}
</script>