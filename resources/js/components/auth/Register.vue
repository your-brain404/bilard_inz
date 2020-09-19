<template>
	<div>
		<v-btn icon dark @click="dialog = true">
			<v-icon>mdi-account</v-icon>
		</v-btn>
		<v-dialog v-model="dialog">
			<v-card class="register-card position-relative register-bg" raised style="background-image: linear-gradient(to right top, rgb(191 218 199 / 70%), rgb(0 0 0 / 70%)), url(../storage/img/toolbar/8-ball.jpg)">
				<form class="position-relative register-form">
					<h1 class="about-title font-weight-bold text-center text-white mt-0">Zarejestruj się</h1>
					<v-text-field dark v-model="first_name" :error-messages="firstNameErrors" :counter="15" label="Imię" required @input="$v.first_name.$touch()" @blur="$v.first_name.$touch()" class="primary-text"></v-text-field>
					<v-text-field dark v-model="last_name" :error-messages="lastNameErrors" :counter="20" label="Nazwisko" required @input="$v.last_name.$touch()" @blur="$v.last_name.$touch()"></v-text-field>
					<v-text-field dark v-model="email" :error-messages="emailErrors" label="E-mail" required @input="$v.email.$touch()" @blur="$v.email.$touch()"></v-text-field>
					<v-select dark v-model="select" :items="items" :error-messages="selectErrors" label="Wybierz typ konta" required @change="$v.select.$touch()" @blur="$v.select.$touch()"></v-select>

					<v-checkbox dark class="" v-model="regulations" :error-messages="regulationsErrors"  required @change="$v.regulations.$touch()" @blur="$v.regulations.$touch()">
						<span slot="label">
							Regulamin sklepu <router-link class="register-checkbox-link" to="/regulamin"><v-btn dark class="register-button" small outlined>Pokaż</v-btn></router-link>
						</span>
					</v-checkbox>

					<v-checkbox dark class="pt-0 mt-0" v-model="privace" :error-messages="privaceErrors" label="Polityka prywatności*" required @change="$v.privace.$touch()" @blur="$v.privace.$touch()">
						<span slot="label">
							Polityka Prywatności <router-link class="register-checkbox-link" to="/polityka-prywatnosci"><v-btn dark class="register-button" small outlined>Pokaż</v-btn></router-link>
						</span>
					</v-checkbox>

					<v-checkbox dark class="pt-0 mt-0 register-checkbox" v-model="rodo" :error-messages="rodoErrors" :label="rodoText" required @change="$v.rodo.$touch()" @blur="$v.rodo.$touch()"></v-checkbox>

				</form>
				<v-btn dark outlined class="mr-4 w-100 register-button" @click="submit">
					Załóż konto
				</v-btn>
				<h5 class="text-center white--text py-4 m-0">lub</h5>


				<v-btn color="#4569b1" class="white--text w-100">
					<v-icon left>mdi-facebook</v-icon>
					<span>Zaloguj się przez Facebooka</span>
				</v-btn>
			</v-card>
		</v-dialog>
	</div>
</template>

<script>
	import { validationMixin } from 'vuelidate'
	import { required, maxLength, email } from 'vuelidate/lib/validators'

	export default {
		mixins: [validationMixin],

		validations: {
			first_name: { required },
			last_name: { required },
			email: { required, email },
			select: { required },
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
			}
		},

		data: () => ({
			first_name: '',
			last_name: '',
			email: '',
			select: null,
			items: [
			'Klient',
			'Zawodnik',
			'Trener',
			],
			regulations: false,
			privace: false,
			rodo: false,
			dialog: false
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
			selectErrors () {
				const errors = []
				if (!this.$v.select.$dirty) return errors
					!this.$v.select.required && errors.push('To pole jest wymagane')
				return errors
			},
			firstNameErrors () {
				const errors = []
				if (!this.$v.select.$dirty) return errors
					!this.$v.first_name.required && errors.push('To pole jest wymagane')
				return errors
			},
			lastNameErrors () {
				const errors = []
				if (!this.$v.select.$dirty) return errors
					!this.$v.last_name.required  && errors.push('To pole jest wymagane')
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
				this.$v.$touch()
			},
			clear () {
				this.$v.$reset()
				this.first_name = ''
				this.last_name = ''
				this.email = ''
				this.select = null
				this.regulations = false
				this.privace = false
				this.rodo = false
			},
		},
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