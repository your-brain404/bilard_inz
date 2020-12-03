<template>
	<v-card flat class="p-3">
		<v-card-title class="p-0 mb-4">
			<h3 class="mb-0 cart-menu-title">Dane kupującego</h3>
		</v-card-title>
		<v-divider></v-divider>
		<v-form ref="form" v-model="valid" lazy-validation>
			<v-row>
				<v-col cols="12" lg="4">
					<v-text-field type="text" :rules="[rules.required]" v-model="main_address.name" label="Imię i nazwisko *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="4">
					<v-text-field type="email" :rules="[rules.required, rules.email]" v-model="main_address.email" label="E-mail *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="4">
					<v-text-field type="text" :rules="[rules.required]" v-model="main_address.phone" label="Telefon *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="main_address.street" label="Ulica *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="number" :rules="[rules.required]" v-model="main_address.house_number" label="Numer Domu *"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="number" v-model="main_address.flat_number" label="Numer Mieszkania"></v-text-field>
				</v-col>
				<v-col cols="12" lg="3">
					<v-text-field type="text" :rules="[rules.required]" v-model="main_address.zip_code" label="Kod Pocztowy *"></v-text-field>
				</v-col>
				
			</v-row>
			<v-textarea v-if="other_address == '0'" rows="4" v-model="main_address.message" label="Uwagi do zamówienia"></v-textarea>

			<h3 class="cart-menu-title mt-5">Dostawa na inny adres?</h3>
			<v-radio-group v-model="other_address" row >
				<v-radio label="Tak" value="1" ></v-radio>
				<v-radio label="Nie" value="0" ></v-radio>
			</v-radio-group>

			<div v-if="other_address == '1'">
				<v-divider></v-divider>
				<v-row>
					<v-col cols="12" lg="4">
						<v-text-field type="text" :rules="[rules.required]" v-model="second_address.name" label="Imię i nazwisko *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="4">
						<v-text-field type="email" :rules="[rules.required, rules.email]" v-model="second_address.email" label="E-mail *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="4">
						<v-text-field type="text" :rules="[rules.required]" v-model="second_address.phone" label="Telefon *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="second_address.street" label="Ulica *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="number" :rules="[rules.required]" v-model="second_address.house_number" label="Numer Domu *"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="number" v-model="second_address.flat_number" label="Numer Mieszkania"></v-text-field>
					</v-col>
					<v-col cols="12" lg="3">
						<v-text-field type="text" :rules="[rules.required]" v-model="second_address.zip_code" label="Kod Pocztowy *"></v-text-field>
					</v-col>

				</v-row>
				<v-textarea rows="4" v-model="second_address.message" label="Uwagi do zamówienia"></v-textarea>
			</div>
		</v-form>
	</v-card>
</template>

<script>
	export default {
		props: ['submit'],
		data() {
			return {
				valid: true,
				other_address: '0',
				main_address: {
					name: '',
					email: '',
					phone: '',
					street: '',
					house_number: undefined,
					flat_number: undefined,
					zip_code: '',
					message: '',
				},
				second_address: {
					name: '',
					email: '',
					phone: '',
					street: '',
					house_number: undefined,
					flat_number: undefined,
					zip_code: '',
					message: '',
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
			}
		}
	}
</script>