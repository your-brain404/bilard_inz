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

				<v-btn :disabled="cart.length == 0" color="primary" @click="e1 = 2" > Dalej </v-btn>

			</v-stepper-content>

			<v-stepper-content step="2">
				<div class="mb-12">
					<ShippingDetails @e1="e1 = $event" :submit="shippingDetailsSubmit" @valid="shippingDetailsValid = $event" />
				</div>

				<v-btn :disabled="!shippingDetailsValid" color="primary" @click="shippingDetailsValidate" > Dalej </v-btn>

				<v-btn @click="e1 = 1" text> Wróć </v-btn>
			</v-stepper-content>

			<v-stepper-content step="3">
				<div class="mb-12">
					<Payments @e1="e1 = $event" :submit="paymentsSubmit" @valid="paymentsValid = $event" />
				</div>

				<v-btn :disabled="!paymentsValid" color="primary" @click="paymentsValidate" > Dalej </v-btn>

				<v-btn  @click="e1 = 2" text>  Wróć </v-btn>
			</v-stepper-content>

			<v-stepper-content step="4">
				<v-card class="mb-12"   ></v-card>

				<v-btn color="primary" @click="" > Dalej </v-btn>

				<v-btn @click="e1 = 3" text>  Wróć </v-btn>
			</v-stepper-content>
		</v-stepper-items>
	</v-stepper>
</template>

<script>
	import CartMenuListing from './CartMenuListing' 
	import ShippingDetails from './ShippingDetails' 
	import Payments from './Payments' 

	export default {
		data () {
			return {
				e1: 3,
				shippingDetailsValid: false,
				shippingDetailsSubmit: false,
				paymentsValid: false,
				paymentsSubmit: false,
			}
		},
		components: {
			CartMenuListing, ShippingDetails, Payments
		},
		computed: {
			cart() {
				return this.$store.getters.cart;
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
			}
		}
	}
</script>