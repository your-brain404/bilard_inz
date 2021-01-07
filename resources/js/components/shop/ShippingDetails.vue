<template>
	<v-card flat class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title details">{{ cart_descriptions.step_2 }}</h3>
		</v-card-title>
		<v-divider></v-divider>
		<v-form ref="form" v-model="valid">
			<v-row>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.name" :disabled="summary != undefined" :label="cart_descriptions.name"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="email" :rules="[rules.required, rules.email]" v-model="shipping_details.main_address.email" :disabled="summary != undefined" :label="cart_descriptions.email"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.phone" :disabled="summary != undefined" :label="cart_descriptions.phone"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.street" :disabled="summary != undefined" :label="cart_descriptions.street"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="number" :rules="[rules.required]" v-model="shipping_details.main_address.house_number" :disabled="summary != undefined" :label="cart_descriptions.house_number"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="number" v-model="shipping_details.main_address.flat_number" :disabled="summary != undefined" :label="cart_descriptions.flat_number"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.zip_code" :disabled="summary != undefined" :label="cart_descriptions.zip_code"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.main_address.city" :disabled="summary != undefined" :label="cart_descriptions.city"></v-text-field>
				</v-col>
				
			</v-row>
			<v-textarea v-if="shipping_details.other_address == '0'" rows="4" v-model="shipping_details.main_address.message" :disabled="summary != undefined" :label="cart_descriptions.message"></v-textarea>

			<h4 class="cart-menu-title mt-5" style="font-size: 1.5rem">{{ cart_descriptions.other_address }}</h4>
			<v-radio-group :disabled="summary != undefined" v-model="shipping_details.other_address" row >
				<v-radio :label="cart_descriptions.yes" value="1" ></v-radio>
				<v-radio :label="cart_descriptions.no" value="0" ></v-radio>
			</v-radio-group>

			<div v-if="shipping_details.other_address == '1'">
				<v-divider></v-divider>
				<v-row>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.name" :disabled="summary != undefined" :label="cart_descriptions.name"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="email" :rules="[rules.required, rules.email]" v-model="shipping_details.second_address.email" :disabled="summary != undefined" :label="cart_descriptions.email"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.phone" :disabled="summary != undefined" :label="cart_descriptions.phone"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.street" :disabled="summary != undefined" :label="cart_descriptions.street"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="number" :rules="[rules.required]" v-model="shipping_details.second_address.house_number" :disabled="summary != undefined" :label="cart_descriptions.house_number"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="number" v-model="shipping_details.second_address.flat_number" :disabled="summary != undefined" :label="cart_descriptions.flat_number"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.zip_code" :disabled="summary != undefined" :label="cart_descriptions.zip_code"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="shipping_details.second_address.city" :disabled="summary != undefined" :label="cart_descriptions.city"></v-text-field>
					</v-col>

				</v-row>
				<v-textarea rows="4" v-model="shipping_details.second_address.message" :disabled="summary != undefined" :label="cart_descriptions.message"></v-textarea>
			</div>
		</v-form>
	</v-card>
</template>

<script>
	import axios from 'axios'
	import rules from '@/helpers/validation/rules'
	
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
						city: 'Lubin',
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
						city: 'Legnica',
						message: 'A to piech',
					},
				},
				cart_descriptions: {},
				
				rules,
				
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
		methods: {
			getCartDescriptions() {
				axios.get('/api/cart_descriptions/get_one/1').then(res => this.cart_descriptions = res.data);
			},
		},
		created() {
			this.$emit('shipping_details', this.shipping_details)
			this.getCartDescriptions();
			if(localStorage.getItem('shipping_details') != null) {
				this.shipping_details = JSON.parse(localStorage.getItem('shipping_details'));
			}
		},
		mounted() {
			this.$emit('valid', this.$refs.form.validate());
		}
		
	}
</script>