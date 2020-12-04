<template>
	<v-card flat class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title">Dostawa i płatność</h3>
		</v-card-title>
		<v-divider ></v-divider>
		<v-form ref="form" v-model="valid" class="mb-5">
			<h4 class="cart-menu-title" style="margin-top: 2rem; font-size: 1.5rem">Wybierz rodzaj dostawy</h4>
			<v-radio-group :disabled="summary != undefined" :rules="[rules.required]" v-model="payments.delivery" column >
				<v-radio v-for="(delivery, i) in deliveries" :key="i" :label="deliveryLabel(delivery)" :value="delivery.value"></v-radio>
			</v-radio-group>
			<h4 class="cart-menu-title mt-5" style="font-size: 1.5rem">Wybierz rodzaj płatności</h4>
			<v-radio-group :disabled="summary != undefined" :rules="[rules.required]" v-model="payments.payment" column >
				<v-radio v-if="payments.delivery != 'in_advance'" label="PayU" value="payu" ></v-radio>
				<v-radio v-if="payments.delivery != 'in_advance'" label="Przelew tradycyjny" value="traditional" ></v-radio>
				<v-radio v-if="payments.delivery != 'courier'" label="Przy odbiorze" value="personal" ></v-radio>
			</v-radio-group>
		</v-form>
		<DeliveryOptions @blockDataEmit="deliveries = $event" />
	</v-card>
</template>

<script>
	import DeliveryOptions from './DeliveryOptions'

	export default {
		props: ['submit', 'summary', 'data'],
		data() {
			return {
				rules: {
					required: v => !!v || 'To pole jest wymagane!'
				},
				valid: true,
				payments: {
					delivery: 'courier',
					payment: 'payu'
				},
				deliveries: []
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
			deliveryLabel: delivery => `${delivery.title} ${delivery.price.toFixed(2)} PLN`
		},
		created() {
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