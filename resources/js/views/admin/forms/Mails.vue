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
							<v-textarea  color="primary" :rules="rules.titleRules" rows="5" v-model="mail.subject" label="Temat Twojej wiadomości"></v-textarea>
							<v-textarea  color="primary" :rules="rules.titleRules" rows="5" v-model="mail.message" label="Twoja wiadomość"></v-textarea>
							<v-file-input v-model="mail.file" show-size counter label="Plik (opcjonalnie)" prepend-icon="mdi-file"></v-file-input>

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
	export default {
		
	}
</script>