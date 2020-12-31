<template>
	<v-navigation-drawer @input="v => v || closeDrawer()" v-model="drawer" absolute bottom temporary>
		<v-list nav dense>
			<v-list-item-group v-model="group" active-class="deep-purple--text text--accent-4">
				<v-list-item v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator'" @click="$router.push('/admin-panel')">
					<v-btn class="header-button" color="primary"  dark icon  >
						<v-icon>mdi-remote-desktop</v-icon>
					</v-btn>
					<span>Admin Panel</span>
				</v-list-item>

				<v-list-item @click="cartMenu = true">
					<CartMenu :menu="cartMenu" @closeMenu="cartMenu = false" color="primary"/>
				</v-list-item>
				<v-list-item v-if="!$store.getters.token">
					<div >
						<Login  @openRegister="register = true"  />
						<Register :dialog="register" @closeRegister="register = false"/>
					</div>
				</v-list-item>
				<v-list-item class="position-relative" v-else @click="accountMenu = true">
					
					<div>
						<v-btn class="header-button" color="primary" icon dark >
							<v-icon>mdi-account</v-icon>
						</v-btn>
						<span>Konto</span>
					</div>
					<v-menu v-model="accountMenu"  :close-on-content-click="false">
						<v-card class="d-flex justify-content-center">
							<v-col>
								<div class="w-100 d-flex flex-column align-items-center justify-content-center mb-3">
									<v-avatar >
										<img v-if="!edit" :src="user_data.photo != '' ? getAvatar(user_data.photo) : placeholder">
										<img v-else :src="blob != '' ? blob : (user_data.photo != '' ? getAvatar(user_data.photo) : placeholder)">
									</v-avatar>
								</div>
								<p v-if="edit" @click="user_data.photo = ''" style="cursor: pointer" class="error--text text-center mb-0">Usuń zdjęcie</p>
								<v-file-input @change="createBlob" label="Zdjęcie" class="pt-0" v-if="edit" v-model="file"></v-file-input>
								<h4 class="text-center" v-if="!edit">{{ user.name }}</h4>
								<v-text-field label="Imię i nazwisko" v-else v-model="user_data.name"></v-text-field>
								<v-divider></v-divider>
								<v-btn v-if="!edit" @click="edit = true" text width="100%">Edytuj konto</v-btn>
								<v-btn v-else @click="editAccount" text width="100%">Akceptuj</v-btn>
								<v-btn v-if="edit" @click="edit = false" text width="100%">Anuluj</v-btn>
								<v-divider></v-divider>
								<v-btn @click="$store.dispatch('logout')" text width="100%">Wyloguj</v-btn>
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
				cartMenu: false,
				user_data: {
					name: '',
					photo: '',
					id: 0
				},
				file: null,
				blob: '',
				accountMenu: false,
				placeholder: window.location.origin + '/storage/img/avatar/8-Ball.png'
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
				this.blob = this.file != null ? URL.createObjectURL(this.file) : (this.user.photo != '' ? this.getAvatar(this.user.photo) : this.placeholder);
			},
			getAvatar(src) {
				return avatar(src);
			},
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
		},
		computed: {
			user(){
				return this.$store.getters.user;
			},
		},
		created() {
			this.loadUserData();
		}
		
	}
</script>

