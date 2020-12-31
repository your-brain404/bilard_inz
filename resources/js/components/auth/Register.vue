<template>
	<div>
		<v-dialog class="position-relative" @input="v => v || closeRegister()" v-model="dialog" persistent>
			<v-card class="register-card  register-bg" raised :style="`background-image: linear-gradient(to right top, rgb(191 218 199 / 70%), rgb(0 0 0 / 70%)), url(${origin}/storage/img/toolbar/8-ball.jpg)`">
				<div @click="closeRegister" class="close-button">
					<v-icon color="white">mdi-close</v-icon>
				</div>
				<v-form ref="form" v-model="valid" class="position-relative register-form">
					<h1 class="about-title font-weight-bold text-center text-white mt-0">Zarejestruj się</h1>
					<v-text-field dark v-model="name" :rules="[rules.required]" :counter="30" label="Imię i Nazwisko" class="primary-text"></v-text-field>
					<v-text-field dark v-model="email" :rules="[rules.required, rules.email]" label="E-mail"></v-text-field>
					<v-text-field type="password" :rules="[rules.required, rules.passwordLength]" dark v-model="password" label="Hasło"></v-text-field>
					<v-text-field :rules="[rules.required, passwordConfirm]" type="password" dark v-model="passwordConf" label="Potwierdź Hasło"></v-text-field>

					<v-checkbox dark class="" v-model="regulations" :rules="[rules.required]">
						<span slot="label">
							Regulamin sklepu <a @click.stop="" class="register-checkbox-link" download :href="getUrl($store.getters.settings.privace_policy)"><v-btn dark class="register-button ml-2" small outlined>Pobierz</v-btn></a>
						</span>
					</v-checkbox>

					<v-checkbox dark class="pt-0 mt-0" v-model="privace" label="Polityka prywatności*" :rules="[rules.required]">
						<span slot="label">
							Polityka Prywatności <a @click.stop="" class="register-checkbox-link" download :href="getUrl($store.getters.settings.privace_policy)"><v-btn dark class="register-button ml-2" small outlined>Pobierz</v-btn></a>
						</span>
					</v-checkbox>

					<v-checkbox dark class="pt-0 mt-0 register-checkbox" v-model="rodo1" :rules="[rules.required]">
						<div slot="label" v-html="$store.getters.settings.rodo_1"></div>
					</v-checkbox>

					<v-checkbox dark class="pt-0 mt-0 register-checkbox" v-model="rodo2" :rules="[rules.required]">
						<div slot="label" v-html="$store.getters.settings.rodo_2"></div>
					</v-checkbox>

				</v-form>
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
	import Facebook from './FacebookLogin';
	import url from '@/helpers/photo/url';
	import rules from '@/helpers/validation/rules'

	export default {
		props:['dialog'],
		watch:{
			'$route'(){
				this.dialog = false;
			},
		},
		data() {
			return {
				valid: true,
				name: '',
				email: '',
				password: '',
				passwordConf: '',
				regulations: false,
				privace: false,
				rodo1: false,
				rodo2: false,
				origin: window.location.origin,
				rules
			}
		},

		methods: {
			passwordConfirm(v) {
				return this.password == this.passwordConf || 'Hasła muszą być takie same!';
			},
			getUrl: src => url(src),
			submit () {
				if(this.$refs.form.validate()) {
					this.$store.dispatch('register', {email: this.email, name: this.name, password: this.password, photo: '' });
					this.closeRegister();
					this.clear();
				}
			},
			clear () {
				this.name = ''
				this.email = ''
				this.password = ''
				this.passwordConf = ''
				this.regulations = false
				this.privace = false
				this.rodo1 = false
				this.rodo2 = false
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