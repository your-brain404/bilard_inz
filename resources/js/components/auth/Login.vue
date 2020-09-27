<template>
	<div>
		<v-btn icon dark @click="dialog = true">
			<v-icon>mdi-account</v-icon>
		</v-btn>
		<v-dialog v-model="dialog" persistent>
			<v-card class="login-card position-relative login-bg" raised style="background-image: linear-gradient(to right top, rgb(191 218 199 / 70%), rgb(0 0 0 / 70%)), url(../storage/img/auth/stol.jpg)">
				<div @click="dialog = false" class="position-absolute close-button">
					<v-icon color="white">mdi-close</v-icon>
				</div>
				<form class="position-relative login-form">
					<h1 class="about-title font-weight-bold text-center text-white mt-0">Zaloguj się</h1>
					<v-text-field dark v-model="email" :error-messages="emailErrors" label="E-mail" required @input="$v.email.$touch()" @blur="$v.email.$touch()"></v-text-field>
					<v-text-field dark v-model="password" type="password" :error-messages="passwordErrors" :counter="20" label="Nazwisko" required @input="$v.password.$touch()" @blur="$v.password.$touch()"></v-text-field>
				</form>
				<v-btn dark outlined class="mr-4 w-100 login-button mt-5" @click="submit">
					Zaloguj się
				</v-btn>
				<h5 class="text-center white--text py-2 m-0 font-weight-lighter">lub</h5>

				<Facebook />

				<p @click="openRegister" class="white--text text-center mt-5" style="cursor: pointer">Nie masz konta? Zarejestruj się</p>	

			</v-card>
		</v-dialog>
	</div>
</template>

<script>
	import { validationMixin } from 'vuelidate'
	import { required, maxLength, email } from 'vuelidate/lib/validators'
	import axios from 'axios'
	import Facebook from './FacebookLogin'

	export default {
		mixins: [validationMixin],

		validations: {
			email: { required, email },
			password: { required },
		},
		watch:{
			'$route'(){
				this.dialog = false;
			}
		},
		components:{
			Facebook
		},

		data: () => ({
			email: '',
			password: '',
			dialog: false,
			
		}),

		computed: {
			
			emailErrors () {
				const errors = []
				if (!this.$v.email.$dirty) return errors
					!this.$v.email.email && errors.push('Proszę podać poprawny adres E-mail!')
				!this.$v.email.required && errors.push('To pole jest wymagane')
				return errors
			},
			passwordErrors () {
				const errors = []
				if (!this.$v.password.$dirty) return errors
					!this.$v.password.required && errors.push('To pole jest wymagane')
				return errors
			},
		},

		methods: {
			submit () {
				if(!this.$v.$anyError) {
					this.$store.dispatch('authLogin', {email: this.email, password: this.password});
					this.dialog = false;
				}
				
			},
			clear () {
				this.$v.$reset()
				this.email = ''
				this.password = ''
			},
			openRegister(){
				this.dialog = false;
				this.$emit('openRegister');
			},
			
		},
	}
</script>

<style>
	.v-label, .v-input__slot{
		margin-bottom: 0!important;
	}
	.login-button{
		border:1px solid white;
		color: white;
		outline: none!important;
		background: transparent;
		font-size: 3rem;
		mix-blend-mode: screen;
	}
	.login-button:hover {
		background-color: white;
		color: #000;
		
	}
	.login-card{
		padding: 4rem 17rem;
	}
	.login-form{
		z-index: 300;
	}
	.login-bg{
		background-position: center left;
		background-repeat: no-repeat;
		background-size: cover;
		width: 100%;
		height: 100%;
		top:0;
		left:0;
	}
	.v-counter{
		margin-top: .5rem;
	}
	.require-star{
		color: red;
	}
	.login-checkbox-link{
		color: #007bff!important;
	}
</style>