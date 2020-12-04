<template>
	<v-card flat class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title">Dane kupującego</h3>
		</v-card-title>
		<v-divider></v-divider>
		<v-form ref="form" v-model="valid" lazy-validation>
			<v-row>
				<v-col cols="12" lg="4">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.name" :disabled="summary != undefined" label="Imię i nazwisko *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="4">
					<v-text-field type="email" :rules="[rules.required, rules.email]" v-model="shipping_details.main_address.email" :disabled="summary != undefined" label="E-mail *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="4">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.phone" :disabled="summary != undefined" label="Telefon *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.street" :disabled="summary != undefined" label="Ulica *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="number" :rules="[rules.required]" v-model="shipping_details.main_address.house_number" :disabled="summary != undefined" label="Numer Domu *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="number" v-model="shipping_details.main_address.flat_number" :disabled="summary != undefined" label="Numer Mieszkania"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.zip_code" :disabled="summary != undefined" label="Kod Pocztowy *"></v-text-field>
				</v-col>
				
			</v-row>
			<v-textarea v-if="shipping_details.other_address == '0'" rows="4" v-model="shipping_details.main_address.message" :disabled="summary != undefined" label="Uwagi do zamówienia"></v-textarea>

			<h4 class="cart-menu-title mt-5" style="font-size: 1.5rem">Dostawa na inny adres?</h4>
			<v-radio-group :disabled="summary != undefined" v-model="shipping_details.other_address" row >
				<v-radio label="Tak" value="1" ></v-radio>
				<v-radio label="Nie" value="0" ></v-radio>
			</v-radio-group>

			<div v-if="shipping_details.other_address == '1'">
				<v-divider></v-divider>
				<v-row>
					<v-col cols="12" lg="4">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.name" :disabled="summary != undefined" label="Imię i nazwisko *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="4">
						<v-text-field type="email" :rules="[rules.required, rules.email]" v-model="shipping_details.second_address.email" :disabled="summary != undefined" label="E-mail *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="4">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.phone" :disabled="summary != undefined" label="Telefon *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.street" :disabled="summary != undefined" label="Ulica *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="number" :rules="[rules.required]" v-model="shipping_details.second_address.house_number" :disabled="summary != undefined" label="Numer Domu *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="number" v-model="shipping_details.second_address.flat_number" :disabled="summary != undefined" label="Numer Mieszkania"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.zip_code" :disabled="summary != undefined" label="Kod Pocztowy *"></v-text-field>
					</v-col>

				</v-row>
				<v-textarea rows="4" v-model="shipping_details.second_address.message" :disabled="summary != undefined" label="Uwagi do zamówienia"></v-textarea>
			</div>
		</v-form>
	</v-card>
</template>

<script>
	export default {
		props: ['submit', 'summary', 'data'],
		data() {
			return {
				valid: true,
				shipping_details: {
					other_address: '1',
					main_address: {
						name: 'Daniel Lewicki',
						email: 'dany97971@gmail.com',
						phone: '794640515',
						street: 'Budowniczych LGOM',
						house_number: 9,
						flat_number: 1,
						zip_code: '59-300',
						message: 'Wiadomość adres główny',
					},
					second_address: {
						name: 'Kamil Piech',
						email: 'd.lewicki@adawards.pl',
						phone: '123123123',
						street: 'Alejandro Gov',
						house_number: 6,
						flat_number: 9,
						zip_code: '59-220',
						message: 'A to piech',
					},
				},
				
				rules: {
					required: v => !!v || 'To pole jest wymagane!',
					email: value => {
						const pattern = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
						return pattern.test(value) || 'Niepoprawny e-mail.'
					}, 
				}
				
			}
		},
		watch: {
			valid() {
				this.$emit('valid', this.valid);
			},
			submit() {
				if(this.submit) {
					if(this.$refs.form.validate()) {
						this.$emit('e1', 3)
					}
					
				}
			},
			data() {
				if(this.data != undefined) {
					this.shipping_details = this.data;
				}
			},
			shipping_details: {
				deep: true,
				handler() {
					this.$emit('shipping_details', this.shipping_details)
					localStorage.setItem('shipping_details', JSON.stringify(this.shipping_details));
				}
			}
		},
		created() {
			this.$emit('shipping_details', this.shipping_details)
			if(localStorage.getItem('shipping_details') != null) {
				this.shipping_details = JSON.parse(localStorage.getItem('shipping_details'));
			}
			
		},
		mounted() {
			this.$emit('valid', this.$refs.form.validate());
		}
	}
</script>