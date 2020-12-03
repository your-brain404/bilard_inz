<template>
	<v-card flat class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title">Dostawa i płatność</h3>
		</v-card-title>
		<v-divider ></v-divider>
		<v-form ref="form" v-model="valid" class="mb-5">
			<h3 class="cart-menu-title" style="margin-top: 2rem">Wybierz rodzaj dostawy</h3>
			<v-radio-group :rules="[rules.required]" v-model="delivery" column >
				<v-radio label="Kurier" value="Kurier" ></v-radio>
				<v-radio label="Kurier za pobraniem" value="Kurier za pobraniem" ></v-radio>
				<v-radio label="Odbiór osobisty" value="Odbiór osobisty" ></v-radio>
			</v-radio-group>
			<h3 class="cart-menu-title mt-5">Wybierz rodzaj płatności</h3>
			<v-radio-group :rules="[rules.required]" v-model="payment" column >
				<v-radio label="PayU" value="PayU" ></v-radio>
				<v-radio label="Przelew tradycyjny" value="Przelew tradycyjny" ></v-radio>
				<v-radio label="Przy odbiorze" value="Przy odbiorze" ></v-radio>
			</v-radio-group>
		</v-form>
	</v-card>
</template>

<script>
	export default {
		props: ['submit'],
		data() {
			return {
				rules: {
					required: v => !!v || 'To pole jest wymagane!'
				},
				valid: true,
				delivery: '',
			}
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
		}
	}
</script>