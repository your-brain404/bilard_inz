<template>
	<v-card flat class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title">{{ cart_descriptions ? cart_descriptions.step_3 : '' }}</h3>
		</v-card-title>
		<v-divider ></v-divider>
		<v-form ref="form" v-model="valid" class="mb-5">
			<h4 class="cart-menu-title" style="margin-top: 2rem; font-size: 1.5rem">{{ cart_descriptions.delivery_type }}</h4>
			<v-radio-group :disabled="summary != undefined" :rules="[rules.required]" v-model="payments.delivery" column >
				<v-radio v-for="(delivery, i) in deliveries" :key="i" :label="deliveryLabel(delivery)" :value="delivery.value"></v-radio>
			</v-radio-group>
			<h4 class="cart-menu-title mt-5" style="font-size: 1.5rem">{{ cart_descriptions.payment_type }}</h4>
			<v-radio-group :disabled="summary != undefined" :rules="[rules.required]" v-model="payments.payment" column >
				<v-radio v-if="payments.delivery != 'in_advance'" :label="cart_descriptions.traditional" value="traditional" ></v-radio>
				<v-radio v-if="payments.delivery != 'courier'" :label="cart_descriptions.personal" value="personal" ></v-radio>
			</v-radio-group>
		</v-form>
		<DeliveryOptions @blockDataEmit="deliveries = $event" />
	</v-card>
</template>

<script>
	import DeliveryOptions from './DeliveryOptions'
	import axios from 'axios'
	import rules from '@/helpers/validation/rules'

	export default {
		props: ['submit', 'summary', 'data'],
		data() {
			return {
				rules,
				valid: true,
				payments: {
					delivery: 'courier',
					payment: 'traditional'
				},
				deliveries: [],
				shop_descriptions: {},
				cart_descriptions: {},
			}
		},
		components: {
			DeliveryOptions
		},
		watch: {
			submit() {
				if(this.submit) {
					if(this.$refs.form.validate()) {
						this.$emit('e1', 4)
					}
				}
			},
			valid() {
				this.$emit('valid', this.valid);
			},
			data() {
				if(this.data != undefined) this.payments = this.data;
			},
			payments: {
				deep: true,
				handler() {
					this.$emit('payments', this.payments);
					localStorage.setItem('payments', JSON.stringify(this.payments))
				}
			},
			deliveries() {
				this.$emit('delivery', this.deliveries.find(delivery => delivery.value == this.payments.delivery))
			}
		},
		methods: {
			getCartDescriptions() {
				axios.get('/api/cart_descriptions/get_one/1').then(res => this.cart_descriptions = res.data);
			},
			getShopDescriptions() {
				axios.get('/api/shop_descriptions/get_one/1').then(res => this.shop_descriptions = res.data);
			},
			deliveryLabel(delivery) {
				return `${delivery.title} ${delivery.price.toFixed(2)} ${this.shop_descriptions.currency}`;
			} 
		},
		created() {
			this.getShopDescriptions();
			this.getCartDescriptions();
			this.$emit('payments', this.payments);
			if(localStorage.getItem('payments') != null) {
				this.payments = JSON.parse(localStorage.getItem('payments'))
			}
		},
		mounted() {
			this.$emit('valid', this.$refs.form.validate())
		}

	}
</script>