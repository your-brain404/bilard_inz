<template>
	<div>
		<Register :authDescriptions="authDescriptions" :dialog="register" @closeRegister="register = false"/>
		<v-navigation-drawer class="public-drawer" @input="v => v || closeDrawer()" v-model="drawer" absolute bottom temporary right>
			<v-list nav dense>
				<v-list-item-group v-model="group" active-class="deep-purple--text text--accent-4">
					<v-list-item @click="$route.path != '/' ? $router.push('/') : true" class="d-flex justify-content-center flex-column">
						<img width="auto" height="120px" :src="url($store.getters.settings.photo).replace('.webp', '')" :alt="$store.getters.settings.photo_alt">
						<h3 class="mb-0">{{ $store.getters.settings.company }}</h3>
					</v-list-item>
					<v-list-item v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator'" @click="$router.push('/admin-panel/main')">
						<v-btn class="header-button" color="primary"  dark icon  >
							<v-icon>mdi-{{ drawerDescriptions.panel_icon }}</v-icon>
						</v-btn>
						<span>{{ drawerDescriptions.panel }}</span>
					</v-list-item>
					<v-list-item v-if="$store.getters.subpages.length > 0 ? $store.getters.subpages.find(subpage => subpage.page == '/sklep').active : true" @click="cartMenu = true">
						<CartMenu  :menu="cartMenu" @closeMenu="cartMenu = false" color="primary"/>
					</v-list-item>
					<v-list-item @click="login = true; closeDrawer()" v-if="!$store.getters.token">
						<div >
							<Login @openPasswordReminder="openPasswordReminder = true" :authDescriptions="authDescriptions" :drawerDescriptions="drawerDescriptions" :dialog="login" @closeLogin="login = false" @openRegister="register = true"  />
							<PasswordReminder @closePasswordReminder="openPasswordReminder = false" :authDescriptions="authDescriptions" :openPasswordReminder="openPasswordReminder" />
						</div>
					</v-list-item>
					<v-list-item class="position-relative" v-else @click="accountMenu = true">
						<v-menu v-model="accountMenu" offset-y :close-on-content-click="false">
							<template #activator="{ on }">
								<div v-on="on">
									<v-btn class="header-button" color="primary" icon  >
										<v-icon>mdi-{{ drawerDescriptions.account_icon }}</v-icon>
									</v-btn>
									<span>{{ drawerDescriptions.account }}</span>
								</div>
							</template>
							<v-card class="d-flex justify-content-center">
								<v-col>
									<div class="w-100 d-flex flex-column align-items-center justify-content-center mb-3">
										<v-avatar >
											<img v-if="!edit" :src="userData.photo ? avatar(userData.photo) : avatar(drawerDescriptions.placeholder)">
											<img v-else :src="blob != '' ? blob : (userData.photo ? avatar(userData.photo) : avatar(drawerDescriptions.placeholder))">
										</v-avatar>
									</div>
									<p v-if="edit" @click="userData.photo = null" style="cursor: pointer" class="error--text text-center mb-0">{{ drawerDescriptions.delete_photo }}</p>
									<v-file-input @change="createBlob" :label="drawerDescriptions.photo_text" class="pt-0" v-if="edit" v-model="file"></v-file-input>
									<h4 class="text-center" v-if="!edit">{{ user.name }}</h4>
									<v-text-field :label="drawerDescriptions.name" v-else v-model="userData.name"></v-text-field>
									<v-divider></v-divider>
									<v-btn v-if="!edit && !editPassword" @click="edit = true; editPassword = false" text width="100%">{{ drawerDescriptions.edit_account }}</v-btn>
									<v-btn v-if="!editPassword && !edit" @click="editPassword = true; edit = false" text width="100%">{{ drawerDescriptions.change_password }}</v-btn>
									<div v-if="editPassword">
										<v-form v-model="passwordValid" ref="password">
											<v-text-field type="password" :label="drawerDescriptions.password" :rules="[required, passwordLength]" v-model="passwordData.password"></v-text-field>
											<v-text-field type="password" :label="drawerDescriptions.new_password" :rules="[required, passwordLength]" v-model="passwordData.new_password"></v-text-field>
											<v-text-field type="password" :label="drawerDescriptions.new_password_confirm" :rules="[required, passwordLength, passwordConfirm(passwordData.new_password, passwordData.new_password_confirm)]" v-model="passwordData.new_password_confirm"></v-text-field>
											<v-btn :disabled="!passwordValid" @click="changePassword" text width="100%">{{ drawerDescriptions.accept }}</v-btn>
											<v-btn @click="editPassword = false" text width="100%">{{ drawerDescriptions.cancel }}</v-btn>
										</v-form>
									</div>
									<v-btn v-if="edit" @click="editAccount" text width="100%">{{ drawerDescriptions.accept }}</v-btn>
									<v-btn v-if="edit" @click="edit = false" text width="100%">{{ drawerDescriptions.cancel }}</v-btn>
									<v-divider></v-divider>
									<v-btn @click="logout" text width="100%">{{ drawerDescriptions.log_out }}</v-btn>
								</v-col>
							</v-card>
						</v-menu>
					</v-list-item>
				</v-list-item-group>
			</v-list>
		</v-navigation-drawer>
		<Rules />
	</div>
</template>
<script>
	import Register from '@/components/auth/Register'
	import Login from '@/components/auth/Login'
	import CartMenu from '../shop/CartMenu'
	import axios from 'axios'
	import avatar from '../../helpers/photo/avatar.js'
	import url from '@/helpers/photo/url'
	import PasswordReminder from '@/components/auth/PasswordReminder'
	import Rules from '@/helpers/validation/Rules'
	
	export default {
		components: {
			Register, Login, CartMenu, PasswordReminder, Rules
		},
		props: ['drawer', 'openLogin'],
		watch: {
			user() {
				this.loadUserData();
				if(!this.user.id) this.getAuthDescriptions();
			},
			openLogin() {
				if(this.openLogin) this.login = true;
			},
			openPasswordReminder() {
				if(this.openPasswordReminder) this.openPasswordReminder = true;
			}
		},
		data() {
			return {
				edit: false,
				url,
				cartMenu: false,
				login: false,
				register: false,
				drawerDescriptions: {},
				authDescriptions: {},
				editPassword: false,
				passwordValid: true,
				userData: {
					name: '',
					photo: '',
					id: 0
				},
				passwordData: {
					password: '',
					new_password: '',
					new_password_confirm: ''
				},
				file: null,
				blob: '',
				accountMenu: false,
				openPasswordReminder: false,
				avatar
			}
		},
		methods: {
			...Rules.methods,
			logout() {
				this.$store.dispatch('logout');
				this.accountMenu = false;
			},
			changePassword() {
				this.$store.commit('loading', true);
				axios.post('/api/users/change_password', {...this.passwordData, id: this.user.id}).then(res => {
					this.$store.commit('loading', false);
					if(res.data.success) {
						this.$store.commit('setSnackbar', res.data.success.message);
						this.editPassword = false;
						Object.entries(this.passwordData).forEach(data => data[1] = '');
					}
					if(res.data.error) this.$store.commit('setSnackbar', res.data.error.message);
				}).catch(() => this.$store.commit('loading', false));
			},
			openPasswordReminderHandler() {
				this.login = false;
				this.openPasswordReminder = true;
				setTimeout(() => this.openPasswordReminder = false, 20);
			},
			async getAuthDescriptions() {
				await axios.get('/api/auth_descriptions/get_one/1').then(res => this.authDescriptions = res.data);
			},
			closeDrawer() {
				this.$emit('closeDrawer');
			},
			loadUserData() {
				this.userData.name = this.user.name;
				this.userData.photo = this.user.photo;
				this.userData.id = this.user.id;
			},
			createBlob() {
				this.blob = this.file != null ? URL.createObjectURL(this.file) : (this.user.photo != '' ? avatar(this.user.photo) : this.url(this.drawerDescriptions.placeholder));
			},
			async editAccount() {
				this.$store.commit('loading', true);
				let formData = new FormData();
				formData.append('file', this.file);
				if(this.file != null) {
					await axios.post('/api/avatars/add', formData).then(res => {
						this.userData.photo = res.data.avatar;
					}).catch(err => {
						this.$store.commit('loading', false);
						this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.photo_error);
					})
				}
				await axios.put('/api/users/edit', this.userData).then(res => {
					this.$store.commit('loading', false);
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.edit_account_success);
					this.$store.commit('setUser', res.data);
					this.edit = false;
					this.file = null;
				})
			},
			async getDrawerDescriptions() {
				await axios.get('/api/drawer_descriptions/get_one/1').then(res => this.drawerDescriptions = res.data);
				console.log(avatar(this.drawerDescriptions.placeholder))
			}
		},
		computed: {
			...Rules.computed,
			user(){
				return this.$store.getters.user;
			},
		},
		created() {
			this.loadUserData();
			this.getDrawerDescriptions();
			if(!localStorage.getItem('user')) this.getAuthDescriptions();
		}

	}
</script>
<style>
	.public-drawer {
		box-shadow: unset!important;
	}
	.v-application .deep-purple--text.text--accent-4, .v-application .deep-purple--text {
		color: unset!important;
		caret-color: unset!important;
	}
</style>