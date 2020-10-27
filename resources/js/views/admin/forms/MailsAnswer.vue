<template>
	<v-content>
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Odpowiedź na mail o temacie '{{ mail.subject }}'
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row class="px-5">
						<v-col cols="12" lg="8">
							<v-textarea  color="primary" :rules="rules.titleRules" rows="5" v-model="answer.answer_message" label="Twoja wiadomość"></v-textarea>
							<v-file-input v-model="answer.file" show-size counter label="Plik (opcjonalnie)" prepend-icon="mdi-file"></v-file-input>

						</v-col>
						<v-col class="" cols="12" lg="4">
							<div class="pa-5">
								<v-text-field color="primary" disabled v-model="mail.name" label="Imię i nazwisko"></v-text-field>
								<v-text-field  color="primary" disabled v-model="mail.email" label="E-mail"></v-text-field>
								<v-text-field  color="primary" disabled v-model="mail.phone" label="Telefon"></v-text-field>
								<v-text-field  color="primary" disabled v-model="mail.subject" label="Temat"></v-text-field>
								<v-textarea  color="primary" rows="5" disabled v-model="mail.message" label="Wiadomość"></v-textarea>
								<a v-if="mail.attachment != null" :href="getAttachment(mail.attachment)">
									<v-btn color="primary">
										<v-icon>mdi-file</v-icon>
										<span>Załącznik</span>
									</v-btn>
								</a>
								
							</div>
						</v-col>
						
					</v-row>

					<v-divider class="mb-0"></v-divider>

					<v-card-actions class="pa-4">
						<v-btn :loading="loading" :disabled="!valid" color="success" class="mr-2" @click="send" >
							<v-icon left>mdi-check</v-icon>
							<span>Wyślij</span>
						</v-btn>

						<v-btn color="error" class="mr-2" @click="$router.go(-1)" >
							<v-icon left>mdi-close</v-icon>
							<span>Wróć</span>
						</v-btn>
					</v-card-actions>
				</v-form>
			</v-card>
		</v-container>
	</v-content>
</template>
<script>
	import axios from 'axios'
	import attachment from '../../../helpers/attachments/link.js'

	export default {
		data() {
			return {
				mail: {},
				loading: false,
				answer: {
					answer_message: '',
					file: null,
					answer: 1,
					id: this.$route.params.id,
					subject: '',
					email: ''
				},
				rules: {
					titleRules: [
					v => !!v || 'To pole jest wymagane!'
					],
				},
				valid: true
			}
		},
		watch: {
			mail() {
				this.answer.subject = this.mail.subject;
				this.answer.email = this.mail.email;
			}
		},
		methods: {
			getMail() {
				axios.get(`/api/mails/get_one/${this.$route.params.id}`).then(res => {
					this.mail = res.data;
				})
			},
			getAttachment(src) {
				return attachment(src);
			},
			prepareData() {
				let contact_data = new FormData();
				Object.entries(this.answer).forEach(el => el[1] != null ? contact_data.append(el[0], el[1]) : true);

				return contact_data;
			},
			send() {
				if(!this.valid) return;
				this.loading = true;
				axios.post('/api/mails/answer', this.prepareData(), {
					headers: {
						'Content-Type': 'multipart/form-data'
					}
				}).then(res => {
					this.loading = false;
					if(res.data.error != undefined) this.$store.commit('setSnackbar', res.data.error.message);
					else if(res.data.success != undefined) this.$store.commit('setSnackbar', res.data.success.message);
					console.log(res)
				}).catch(err => {
					this.loading = false;
					this.$store.commit('setSnackbar', 'Przepraszamy, coś poszło nie tak...');
				})

			}
		},
		created() {
			this.getMail();
		}
	}
</script>