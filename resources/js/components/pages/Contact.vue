<template>
	<v-container class="py-12">
		<v-row justify="center">
			<v-col cols="12">
				<h2 class="about-title font-weight-bold text-center first-color my-0">{{ contactDescriptions.title }}</h2>
				<h4 class="first-color text-center ">{{ contactDescriptions.subtitle }}</h4>
			</v-col>
		</v-row>
		<v-row>
			<v-col cols="12" md="7" >
				<v-form v-if="validationRules.id" ref="form" v-model="valid">
					<v-text-field color="primary" v-model="contact_data.name" :rules="[required]" :label="contactDescriptions.name" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.email" :rules="[required, email]" :label="contactDescriptions.email" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.phone" :rules="[required]" :label="contactDescriptions.phone" required></v-text-field>
					<v-text-field color="primary" v-model="contact_data.subject" :rules="[required]" :label="contactDescriptions.subject" required></v-text-field>
					<v-textarea color="primary" v-model="contact_data.message" :rules="[required]" rows="5" :label="contactDescriptions.message" required></v-textarea>
					<v-file-input :counter-size-string="counter" v-model="files"  show-size counter multiple :label="contactDescriptions.files" :rules="[filesSize]" :prepend-icon="`mdi-${contactDescriptions.file_icon}`"></v-file-input>
					<v-checkbox rules="[required]" @change="contact_data.rodo1 ? contact_data.rodo1 = 1 : contact_data.rodo1 = 0" color="primary" class="mt-10" v-model="contact_data.rodo1">
						<div slot="label" v-html="$store.getters.settings.rodo_1"></div>
					</v-checkbox>
					<v-checkbox rules="[required]" @change="contact_data.rodo2 ? contact_data.rodo2 = 1 : contact_data.rodo2 = 0" color="primary" class="mt-0 mb-5"  v-model="contact_data.rodo2">
						<div slot="label" v-html="$store.getters.settings.rodo_2"></div>
					</v-checkbox>
					<v-btn :loading="loading" outlined color="primary" @click="saveMail">{{ contactDescriptions.button_name }}</v-btn>
				</v-form>
			</v-col>
			<v-col col="12" md="5" class="d-flex justify-content-center" >
				<div style="align-self: center">
					<v-col v-if="$store.getters.contact.phone_1" cols="12"  >
						<a class="d-flex align-items-center flex-column" :href="`tel:${$store.getters.contact.phone_1}`">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-{{ contactDescriptions.phone_icon }}
								</v-icon>
							</v-btn>
							<p class="contact-description">{{ $store.getters.contact.phone_1 }}</p>
						</a>
					</v-col>
					<v-col v-if="$store.getters.contact.phone_2" cols="12"  >
						<a class="d-flex align-items-center flex-column" :href="`tel:${$store.getters.contact.phone_2}`">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-{{ contactDescriptions.phone_icon }}
								</v-icon>
							</v-btn>
							<p class="contact-description">{{ $store.getters.contact.phone_2 }}</p>
						</a>
					</v-col>
					<v-col v-if="$store.getters.contact.email_1" cols="12"  >
						<a class="d-flex align-items-center flex-column" :href="`mailto:${$store.getters.contact.email_1}`">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-{{ contactDescriptions.email_icon }}
								</v-icon>
							</v-btn>
							<p class="contact-description">{{ $store.getters.contact.email_1 }}</p>
						</a>
					</v-col>
					<v-col v-if="$store.getters.contact.email_2" cols="12"  >
						<a class="d-flex align-items-center flex-column" :href="`mailto:${$store.getters.contact.email_2}`">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-{{ contactDescriptions.email_icon }}
								</v-icon>
							</v-btn>
							<p class="contact-description">{{ $store.getters.contact.email_2 }}</p>
						</a>
					</v-col>
					<v-col cols="12"  >
						<a class="d-flex align-items-center flex-column" target="_blank" :href="`https://www.google.com/search?tbm=lcl&sxsrf=ALeKk03R-n9i9FnjZJDGGG_KGJOJQtjFRQ%3A1604163272211&ei=yJadX-mpDJKJrwT3w42AAg&q=${$store.getters.contact.address},+${$store.getters.contact.zip_code}+${$store.getters.contact.city}&oq=bilard+&gs_l=psy-ab.3.0.35i39k1j0i67k1j0l8.10333.16284.0.16901.13.13.0.0.0.0.190.1120.0j7.7.0....0...1c.1.64.psy-ab..6.7.1120...46j0i433i131k1j46i67k1j0i433i67k1j0i10k1j0i203k1j0i433k1.0.d23hfgOs4ts#rlfi=hd:;si:9035433236648356783;mv:[[51.390375377319025,16.199153519032567],[51.39001542268097,16.19857668096743]]`">
							<v-btn class="mx-2" fab dark large color="primary" >
								<v-icon dark>
									mdi-{{ contactDescriptions.map_icon }}
								</v-icon>
							</v-btn>
							<p class="contact-description">{{ $store.getters.contact.address }}, {{ $store.getters.contact.zip_code }} {{ $store.getters.contact.city }}</p>
						</a>
					</v-col>
					<v-col cols="12"  >
						<v-row>
							<v-col v-if="$store.getters.contact.fb" cols="3">
								<a class="d-flex align-items-center flex-column" target="_blank" :href="$store.getters.contact.fb">
									<v-btn class="mx-2" fab dark large color="#3b5998" >
										<v-icon dark>
											mdi-facebook
										</v-icon>
									</v-btn>
								</a>
							</v-col>

							<v-col v-if="$store.getters.contact.yt" cols="3">
								<a class="d-flex align-items-center flex-column" target="_blank" :href="$store.getters.contact.yt">
									<v-btn class="mx-2" fab dark large color="#c4302b" >
										<v-icon dark>
											mdi-youtube
										</v-icon>
									</v-btn>
								</a>
							</v-col>

							<v-col v-if="$store.getters.contact.ig" cols="3">
								<a class="d-flex align-items-center flex-column" target="_blank" :href="$store.getters.contact.ig">
									<v-btn class="mx-2 instagram" fab dark large >
										<v-icon dark>
											mdi-instagram
										</v-icon>
									</v-btn>
								</a>
							</v-col>

							<v-col v-if="$store.getters.contact.tw" cols="3">
								<a class="d-flex align-items-center flex-column" target="_blank" :href="$store.getters.contact.tw">
									<v-btn class="mx-2" fab dark large color="#1DA1F2" >
										<v-icon dark>
											mdi-twitter
										</v-icon>
									</v-btn>
								</a>
							</v-col>
						</v-row>
					</v-col>
				</div>
			</v-col>
		</v-row>
		<v-row justify="center">
			<v-col cols="12">
				<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ contactDescriptions.find_us }}</h2>
			</v-col>
		</v-row>
		<v-row>
			<iframe :src="$store.getters.contact.map" width="100%" height="500px" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			
		</v-row>
		<Rules :getFilesSize="getFilesSize" />
	</v-container>
</template>

<script>
	import axios from 'axios'
	import Rules from '@/helpers/validation/Rules'

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
				contactDescriptions: {},
			}
		},
		computed: {
			...Rules.computed,
			user() {
				return this.$store.getters.user;
			},
			getFilesSize() {
				if(this.files.length == 0) return 0;
				let size = 0;
				for(let file of this.files) {
					size += file.size;
				}
				return (size/1000000).toFixed(2);
			},
			counter() {
				return `${this.contactDescriptions.files_length?.replace('{ilosc}', this.files.length).replace('{rozmiar}', this.getFilesSize)}`;
			},
			
		},
		watch: {
			user() {
				if(this.user) {
					this.setUserData();
				}
			},

		},
		methods: {
			...Rules.methods,

			setUserData() {
				this.contact_data.name = this.user.name;
				this.contact_data.email = this.user.email;
			},
			async getContactDescriptions() {
				await axios.get('/api/contact_descriptions/get_one/1').then(res => this.contactDescriptions = res.data);
			},
			async sendMail(mail){
				await axios.post('/api/mails/send', mail).then(res => {
					console.log(res)
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
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.mail_error);
				})

			},
			async saveAttachments(mail) {
				for(let i=0 ; i<this.files.length ; i++ ){
					let formData = new FormData();
					formData.append('file', this.files[i]);
					formData.append('mail_id', mail.id);
					await axios.post('/api/attachments/add', formData).then(res=>{
						if(i == this.files.length - 1) this.sendMail(mail);
					}).catch(err=>{
						this.loading = false;
						console.log(err);
						this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.attachments_error);
					});
				} 
			},
			async saveMail() {
				if(!this.valid) return;

				this.loading = true;
				const response = await this.$recaptcha('login')
				if(!response) {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.recaptcha_error);
					return;
				}
				await axios.post('/api/mails/add', {...this.contact_data, response}).then(res => {
					console.log(res)
					if(res.data.error != undefined) {
						this.$store.commit('setSnackbar', res.data.error.message);
						this.loading = false; 
						return;
					}
					if(this.files.length > 0) this.saveAttachments(res.data);
					else this.sendMail(res.data);
				}).catch(err => {
					console.log(err)
					this.loading = false;
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.error);
				})
			},

		},
		components: {
			Rules
		},
		created() {
			this.getContactDescriptions();
			this.setUserData();
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
	.v-input__slot {
		align-items: unset!important;
	}
	.instagram {
		background: radial-gradient(circle at 30% 107%, #fdf497 0%, #fdf497 5%, #fd5949 45%,#d6249f 60%,#285AEB 90%)!important;
	}
</style>