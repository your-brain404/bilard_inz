<template>
	<div>
		<v-dialog class="position-relative" @input="v => v || closeRegister()" v-model="dialog" persistent>
			<v-card class="register-card  register-bg" raised :style="`background-image: linear-gradient(to right top, rgb(191 218 199 / 70%), rgb(0 0 0 / 70%)), url(${origin}/storage/img/toolbar/8-ball.jpg)`">
				<div @click="closeRegister" class="close-button">
					<v-icon color="white">mdi-close</v-icon>
				</div>
				<form class="position-relative register-form">
					<h1 class="about-title font-weight-bold text-center text-white mt-0">Zarejestruj się</h1>
					<v-text-field dark v-model="name" :error-messages="nameErrors" :counter="30" label="Imię i Nazwisko" required @input="$v.name.$touch()" @blur="$v.name.$touch()" class="primary-text"></v-text-field>
					<v-text-field dark v-model="email" :error-messages="emailErrors" label="E-mail" required @input="$v.email.$touch()" @blur="$v.email.$touch()"></v-text-field>
					<v-text-field type="password" dark v-model="password" :error-messages="passwordErrors" label="Hasło" required @input="$v.password.$touch()" @blur="$v.password.$touch()"></v-text-field>
					<v-text-field type="password" dark v-model="passwordConf" :error-messages="passwordConfErrors" label="Potwierdź Hasło" required @input="$v.passwordConf.$touch()" @blur="$v.passwordConf.$touch()"></v-text-field>

					<v-checkbox dark class="" v-model="regulations" :error-messages="regulationsErrors"  required @change="$v.regulations.$touch()" @blur="$v.regulations.$touch()">
						<span slot="label">
							Regulamin sklepu <router-link class="register-checkbox-link" to="/regulamin"><v-btn dark class="register-button ml-2" small outlined>Pokaż</v-btn></router-link>
						</span>
					</v-checkbox>

					<v-checkbox dark class="pt-0 mt-0" v-model="privace" :error-messages="privaceErrors" label="Polityka prywatności*" required @change="$v.privace.$touch()" @blur="$v.privace.$touch()">
						<span slot="label">
							Polityka Prywatności <router-link class="register-checkbox-link" to="/polityka-prywatnosci"><v-btn dark class="register-button ml-2" small outlined>Pokaż</v-btn></router-link>
						</span>
					</v-checkbox>

					<v-checkbox dark class="pt-0 mt-0 register-checkbox" v-model="rodo" :error-messages="rodoErrors" :label="rodoText" required @change="$v.rodo.$touch()" @blur="$v.rodo.$touch()"></v-checkbox>

				</form>
				<v-btn dark outlined class="mr-4 w-100 register-button" @click="submit">
					Załóż konto
				</v-btn>
				<h5 class="text-center white--text py-4 m-0 font-weight-lighter">lub</h5>


				<Facebook />

			</v-card>
		</v-dialog>
	</div>
</template>

<script>
	import { validationMixin } from 'vuelidate'
	import { required, maxLength, email } from 'vuelidate/lib/validators'
	import Facebook from './FacebookLogin';

	export default {
		props:['dialog'],
		mixins: [validationMixin],

		validations: {
			name: { required },
			email: { required, email },
			password: { required },
			passwordConf: { required },
			regulations: {
				checked (val) {
					return val
				},
			},
			privace: {
				checked (val) {
					return val
				},
			},
			rodo: {
				checked (val) {
					return val
				},
			},
		},
		watch:{
			'$route'(){
				this.dialog = false;
			},
		},

		data: () => ({
			name: '',
			email: '',
			password: '',
			passwordConf: '',
			regulations: false,
			privace: false,
			rodo: false,
			origin: window.location.origin
		}),

		computed: {
			regulationsErrors () {
				const errors = []
				if (!this.$v.regulations.$dirty) return errors
					!this.$v.regulations.checked && errors.push('Proszę zaakceptować regulamin sklepu, aby kontynuować.')
				return errors
			},
			privaceErrors () {
				const errors = []
				if (!this.$v.privace.$dirty) return errors
					!this.$v.privace.checked && errors.push('Proszę zaakceptować politykę prywatności, aby kontynuować.')
				return errors
			},
			rodoErrors () {
				const errors = []
				if (!this.$v.rodo.$dirty) return errors
					!this.$v.rodo.checked && errors.push('Proszę zaakceptować politykę RODO, aby kontynuować.')
				return errors
			},
			nameErrors () {
				const errors = []
				if (!this.$v.name.$dirty) return errors
					!this.$v.name.required && errors.push('To pole jest wymagane')
				return errors
			},
			passwordErrors () {
				const errors = []
				if (!this.$v.password.$dirty) return errors
					this.password.length >= 8 || errors.push('Hasło musi mieć co najmniej 8 liter!')
				!this.$v.password.required && errors.push('To pole jest wymagane')
				return errors
			},
			passwordConfErrors () {
				const errors = []
				if (!this.$v.passwordConf.$dirty) return errors
					this.passwordConf === this.password || errors.push('Hasła muszą być takie same!');
				!this.$v.passwordConf.required && errors.push('To pole jest wymagane')
				return errors
			},
			emailErrors () {
				const errors = []
				if (!this.$v.email.$dirty) return errors
					!this.$v.email.email && errors.push('Proszę podać poprawny adres E-mail!')
				!this.$v.email.required && errors.push('To pole jest wymagane')
				return errors
			},
			regulationsText(){
				return `Regulamin sklepu `
			},
			rodoText(){
				return 'Rodo1';
			},

		},

		methods: {
			submit () {
				if(!this.$v.$anyError) {
					this.$store.dispatch('register', {email: this.email, name: this.name, password: this.password, photo: '' });
					this.closeRegister();
				}
			},
			clear () {
				this.$v.$reset()
				this.name = ''
				this.email = ''
				this.password = ''
				this.passwordConf = ''
				this.regulations = false
				this.privace = false
				this.rodo = false
			},
			closeRegister(){
				this.$emit('closeRegister');
			}
		},
		components:{
			Facebook
		}
	}
</script>

<style>
	.v-label, .v-input__slot{
		margin-bottom: 0!important;
	}
	.register-button{
		border:1px solid white;
		color: white;
		outline: none!important;
		background: transparent;
		font-size: 3rem;
		mix-blend-mode: screen;
	}
	.register-button:hover {
		background-color: white;
		color: #000;
		
	}
	.close-button{
		top: 1%;
		left: 0;
		cursor: pointer;
		width: 100%;
		position: absolute;
		padding: .5rem;
		text-align: right;
	}
	.register-card{
		padding: 4rem 17rem;
	}
	.register-form{
		z-index: 300;
	}
	.register-bg{
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
	.register-checkbox-link{
		color: #007bff!important;
	}
</style>