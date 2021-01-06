<template>
	<v-navigation-drawer class="public-drawer" @input="v => v || closeDrawer()" v-model="drawer" absolute bottom temporary right>
		<v-list nav dense>
			<v-list-item-group v-model="group" active-class="deep-purple--text text--accent-4">
				<v-list-item @click="$route.path != '/' ? $router.push('/') : true" class="d-flex justify-content-center flex-column">
					<img width="auto" height="120px" :src="url($store.getters.settings.photo)" :alt="$store.getters.settings.photo_alt">
					<h3 class="mb-0">{{ $store.getters.settings.company }}</h3>
				</v-list-item>
				<v-list-item v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator'" @click="$router.push('/admin-panel')">
					<v-btn class="header-button" color="primary"  dark icon  >
						<v-icon>mdi-{{ drawer_descriptions.panel_icon }}</v-icon>
					</v-btn>
					<span>{{ drawer_descriptions.panel }}</span>
				</v-list-item>

				<v-list-item @click="cartMenu = true">
					<CartMenu :menu="cartMenu" @closeMenu="cartMenu = false" color="primary"/>
				</v-list-item>
				<v-list-item @click="login = true" v-if="!$store.getters.token">
					<div >
						<Login :dialog="login" @closeLogin="login = false" @openRegister="register = true"  />
						<Register :dialog="register" @closeRegister="register = false"/>
					</div>
				</v-list-item>
				<v-list-item class="position-relative" v-else @click="accountMenu = true">
					
					
					<v-menu v-model="accountMenu" offset-y :close-on-content-click="false">
						<template #activator="{ on }">
							<div v-on="on">
								<v-btn class="header-button" color="primary" icon  >
									<v-icon>mdi-{{ drawer_descriptions.account_icon }}</v-icon>
								</v-btn>
								<span>{{ drawer_descriptions.account }}</span>
							</div>
						</template>
						<v-card class="d-flex justify-content-center">
							<v-col>
								<div class="w-100 d-flex flex-column align-items-center justify-content-center mb-3">
									<v-avatar >
										<img v-if="!edit" :src="user_data.photo != '' ? getAvatar(user_data.photo) : url(drawer_descriptions.placeholder)">
										<img v-else :src="blob != '' ? blob : (user_data.photo != '' ? getAvatar(user_data.photo) : url(drawer_descriptions.placeholder))">
									</v-avatar>
								</div>
								<p v-if="edit" @click="user_data.photo = ''" style="cursor: pointer" class="error--text text-center mb-0">{{ drawer_descriptions.delete_photo }}</p>
								<v-file-input @change="createBlob" :label="drawer_descriptions.photo_text" class="pt-0" v-if="edit" v-model="file"></v-file-input>
								<h4 class="text-center" v-if="!edit">{{ user.name }}</h4>
								<v-text-field label="Imię i nazwisko" v-else v-model="user_data.name"></v-text-field>
								<v-divider></v-divider>
								<v-btn v-if="!edit" @click="edit = true" text width="100%">{{ drawer_descriptions.edit_account }}</v-btn>
								<v-btn v-else @click="editAccount" text width="100%">{{ drawer_descriptions.accept }}</v-btn>
								<v-btn v-if="edit" @click="edit = false" text width="100%">{{ drawer_descriptions.cancel }}</v-btn>
								<v-divider></v-divider>
								<v-btn @click="$store.dispatch('logout')" text width="100%">{{ drawer_descriptions.log_out }}</v-btn>
							</v-col>
						</v-card>
					</v-menu>
				</v-list-item>

				
			</v-list-item-group>
		</v-list>
	</v-navigation-drawer>
</template>

<script>
	import Register from '@/components/auth/Register'
	import Login from '@/components/auth/Login'
	import CartMenu from '../shop/CartMenu'
	import axios from 'axios'
	import avatar from '../../helpers/photo/avatar.js'
	import url from '@/helpers/photo/url'

	export default {
		components: {
			Register, Login, CartMenu,
		},
		props: ['drawer'],
		watch: {
			user() {
				this.loadUserData();
			}
		},
		data() {
			return {
				edit: false,
				url,
				cartMenu: false,
				login: false,
				drawer_descriptions: {},
				user_data: {
					name: '',
					photo: '',
					id: 0
				},
				file: null,
				blob: '',
				accountMenu: false,
			}
		},
		methods: {
			closeDrawer() {
				this.$emit('closeDrawer');
			},
			loadUserData() {
				this.user_data.name = this.user.name; 
				this.user_data.photo = this.user.photo; 
				this.user_data.id = this.user.id; 
			},
			createBlob() {
				this.blob = this.file != null ? URL.createObjectURL(this.file) : (this.user.photo != '' ? this.getAvatar(this.user.photo) : this.url(this.drawer_descriptions.placeholder));
			},
			getAvatar: src => avatar(src),
			async editAccount() {
				this.$store.commit('loading', true);
				let formData = new FormData();
				formData.append('file', this.file);
				if(this.file != null) {
					await axios.post('/api/avatars/add', formData).then(res => {
						this.user_data.photo = res.data.avatar;
					}).catch(err => {
						this.$store.commit('loading', false);
						this.$store.commit('setSnackbar', 'Przepraszamy, nie udało się dodać zdjęcia...');
					})
				}
				axios.put('/api/users/edit', this.user_data).then(res => {
					this.$store.commit('loading', false);
					this.$store.commit('setSnackbar', 'Pomyślnie edytowano użytkownika!');
					this.$store.commit('setUser', res.data);
					this.edit = false;
					this.file = null;
				})
			},
			getDrawerDescriptions() {
				axios.get('/api/drawer_descriptions/get_one/1').then(res => this.drawer_descriptions = res.data);
			}
		},
		computed: {
			user(){
				return this.$store.getters.user;
			},
		},
		created() {
			this.loadUserData();
			this.getDrawerDescriptions();
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
