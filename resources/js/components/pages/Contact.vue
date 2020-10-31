<template>
	<v-container class="py-12">
		<v-row justify="center">
			<v-col cols="12">
				<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Kontakt</h2>
				<h3 class="first-color text-center ">Skontaktuj się z nami wypełniając formularz kontaktowy!</h3>
			</v-col>
		</v-row>
		<v-row>
			<v-col cols="12" lg="8" >
				<v-form ref="form" v-model="valid">
					<v-text-field color="primary" v-model="contact_data.name" :rules="[rules.required]" label="Imię i nazwisko *" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.email" :rules="[rules.required, rules.email]" label="Adres e-mail *" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.phone" :rules="[rules.required]" label="Numer telefonu *" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.subject" :rules="[rules.required]" label="Temat *" required></v-text-field>
					<v-textarea color="primary" v-model="contact_data.message" :rules="[rules.required]" rows="5" label="Wiadomość *" required></v-textarea>
					<v-file-input v-model="files" show-size counter multiple label="Pliki (opcjonalnie)" prepend-icon="mdi-file"></v-file-input>
					<v-checkbox @change="contact_data.rodo1 ? contact_data.rodo1 = 1 : contact_data.rodo1 = 0" color="primary" class="mt-0" :label="rodo1" v-model="contact_data.rodo1"></v-checkbox>
					<v-checkbox @change="contact_data.rodo2 ? contact_data.rodo2 = 1 : contact_data.rodo2 = 0" color="primary" class="mt-0 mb-5" :label="rodo2" v-model="contact_data.rodo2"></v-checkbox>
					<v-btn :loading="loading" outlined color="primary" :disabled="!valid" @click="saveMail">Wyślij</v-btn>
				</v-form>
			</v-col>
			<v-col col="12" lg="4" class="d-flex justify-content-center" >
				<div style="align-self: center">
					<v-col cols="12"  >
						<a class="d-flex align-items-center flex-column" href="tel: +48 123 123 123">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-phone
								</v-icon>
							</v-btn>
							<p class="contact-description">+48 123 123 123</p>
						</a>
					</v-col>
					<v-col cols="12"  >
						<a class="d-flex align-items-center flex-column" target="_blank" href="https://www.google.com/search?tbm=lcl&sxsrf=ALeKk03R-n9i9FnjZJDGGG_KGJOJQtjFRQ%3A1604163272211&ei=yJadX-mpDJKJrwT3w42AAg&q=bilard+centrum+lubin&oq=bilard+&gs_l=psy-ab.3.0.35i39k1j0i67k1j0l8.10333.16284.0.16901.13.13.0.0.0.0.190.1120.0j7.7.0....0...1c.1.64.psy-ab..6.7.1120...46j0i433i131k1j46i67k1j0i433i67k1j0i10k1j0i203k1j0i433k1.0.d23hfgOs4ts#rlfi=hd:;si:9035433236648356783;mv:[[51.390375377319025,16.199153519032567],[51.39001542268097,16.19857668096743]]">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-map
								</v-icon>
							</v-btn>
							<p class="contact-description">ul. Komisji Edukacji Narodowej 6, 59-300 Lubin</p>
						</a>
					</v-col>
					<v-col cols="12"  >
						<a class="d-flex align-items-center flex-column" target="_blank" href="https://www.facebook.com/bfortunski/">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-account
								</v-icon>
							</v-btn>
							<p class="contact-description">Bogusław Fortuński</p>
						</a>
					</v-col>
				</div>
			</v-col>
		</v-row>
		<v-row justify="center">
			<v-col cols="12">
				<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Jak nas znaleźć?</h2>
			</v-col>
		</v-row>
		<v-row>
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2489.699790756315!2d16.196676415765676!3d51.390195379616074!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x470f6f6e97ccc527%3A0x7d644ea82e2eebaf!2sBilard%20Centrum%20Lubin!5e0!3m2!1spl!2spl!4v1603721873070!5m2!1spl!2spl" width="100%" height="500px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			
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
					rodo1: 0,
					rodo2: 0
				},
				files: [],
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
			sendMail(mail){
				axios.post('/api/mails/send', mail).then(res => {
					this.loading = false;
					if(res.data.error != undefined) this.$store.commit('setSnackbar', res.data.error.message);
					else if(res.data.success != undefined) this.$store.commit('setSnackbar', res.data.success.message);

					if(res.data.success) {
						this.$refs.form.reset();
						this.$refs.form.resetValidation();
					}
				}).catch(err => {
					console.log(err)
					this.loading = false;
					this.$store.commit('setSnackbar', 'Przepraszamy, nie udało się wysłać maila...');
				})

			},
			saveAttachments(mail) {
				for(let i=0 ; i<this.files.length ; i++ ){
					let formData = new FormData();
					formData.append('file', this.files[i]);
					formData.append('mail_id', mail.id);
					axios.post('/api/attachments/add', formData).then(res=>{
						if(i == this.files.length - 1) this.sendMail(mail);
					}).catch(err=>{
						this.loading = false;
						console.log(err);
						this.$store.commit('setSnackbar', 'Przepraszamy, nie udało się wysłać załączników...');
					});
				} 
			},
			saveMail() {
				if(!this.valid) return;

				this.loading = true;
				axios.post('/api/mails/add', this.contact_data).then(res => {
					if(this.files.length > 0) this.saveAttachments(res.data);
					else this.sendMail(res.data);
				}).catch(err => {
					console.log(err)
					this.loading = false;
					this.$store.commit('setSnackbar', 'Przepraszamy, błąd serwera...');
				})
			},

		}
	}
</script>

<style>
	.contact-description {
		font-size: 1.2rem;
		font-weight: 500;
		text-align: center;
		margin-top: 1rem;
	}
</style>