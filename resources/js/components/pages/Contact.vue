<template>
	<v-container class="py-12">
		<v-row justify="center">
			<v-col cols="12">
				<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Kontakt</h2>
				<h3 class="first-color text-center ">Skontaktuj się z nami wypełniając formularz kontaktowy!</h3>
			</v-col>
		</v-row>
		<v-row>
			<v-col cols="12" lg="6">
				<v-form ref="form" v-model="valid">
					<v-text-field color="primary" v-model="contact_data.name" :rules="[rules.required]" label="Imię i nazwisko *" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.email" :rules="[rules.required, rules.email]" label="Adres e-mail *" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.phone" :rules="[rules.required]" label="Numer telefonu *" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.subject" :rules="[rules.required]" label="Temat *" required></v-text-field>
					<v-textarea color="primary" v-model="contact_data.message" :rules="[rules.required]" rows="5" label="Wiadomość *" required></v-textarea>
					<v-file-input v-model="contact_data.file" show-size counter label="Plik (opcjonalnie)" prepend-icon="mdi-file"></v-file-input>
					<v-checkbox @change="contact_data.rodo1 ? contact_data.rodo1 = 1 : contact_data.rodo1 = 0" color="primary" class="mt-0" :label="rodo1" v-model="contact_data.rodo1"></v-checkbox>
					<v-checkbox @change="contact_data.rodo2 ? contact_data.rodo2 = 1 : contact_data.rodo2 = 0" color="primary" class="mt-0 mb-5" :label="rodo2" v-model="contact_data.rodo2"></v-checkbox>
					<v-btn :loading="loading" outlined color="primary" :disabled="!valid" @click="send">Wyślij</v-btn>
				</v-form>
			</v-col>
			<v-col col="12" lg="6">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2489.699790756315!2d16.196676415765676!3d51.390195379616074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470f6f6e97ccc527%3A0x7d644ea82e2eebaf!2sBilard%20Centrum%20Lubin!5e0!3m2!1spl!2spl!4v1603721873070!5m2!1spl!2spl" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'

	export default {
		data() {
			return {
				contact_data: {
					name: '',
					email: '',
					phone: '',
					subject: '',
					message: '',
					file: null,
					rodo1: 0,
					rodo2: 0
				},
				loading: false,
				valid: true,

				rules: {
					required:  v => !!v || 'To pole jest wymagane!',
					email: value => {
						const pattern = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
						return pattern.test(value) || 'Niepoprawny e-mail.'
					},
				}
			}
		},
		computed: {
			rodo1() {
				return 'rodo1'
			},
			rodo2() {
				return 'rodo2'
			}
		},
		methods: {
			send() {
				if(!this.valid) return;
				let contact_data = new FormData();
				Object.entries(this.contact_data).forEach(el => el[1] != null ? contact_data.append(el[0], el[1]) : true);
				console.log(contact_data);

				this.loading = true;
				axios.post('/api/mails/add', contact_data, {
					headers: {
						'Content-Type': 'multipart/form-data'
					}
				}).then(res => {
					console.log(res)
					if(res.data.error != undefined) this.$store.commit('setSnackbar', res.data.error.message);
					else if(res.data.success != undefined) this.$store.commit('setSnackbar', res.data.success.message);

					this.loading = false;
					if(res.data.success) {

						this.$refs.form.reset();
						this.$refs.form.resetValidation();
					}
				}).catch(err => {
					console.log(err)
					this.loading = false;
					this.$store.commit('setSnackbar', 'Przepraszamy, coś poszło nie tak...');
				})
			},
			
		}
	}
</script>