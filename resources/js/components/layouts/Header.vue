]<template>
	<v-card class="overflow-hidden">
		<v-app-bar color="#6A76AB" dark shrink-on-scroll prominent :src="banner" fade-img-on-scroll scroll-target="#scrolling-techniques-3" extension-height="100px">
			<template v-slot:img="{ props }">
				<v-img v-bind="props" gradient="to top right, rgba(100,115,201,.7), rgba(25,32,72,.7)"></v-img>
			</template>

			<v-app-bar-nav-icon></v-app-bar-nav-icon>

			<v-toolbar-title class="toolbar-title font-weight-bold first-color pl-0" tag="router-link" to="/">Bilard Centrum Lubin</v-toolbar-title>

			<v-spacer></v-spacer>
			<div class="d-flex align-items-center">
				<v-btn v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator'" outlined @click="$router.push('/admin-panel')" >
					<span>Admin Panel</span>
					<v-icon>mdi-account</v-icon>
				</v-btn>

				<v-btn icon>
					<v-icon>mdi-magnify</v-icon>
				</v-btn>
				<div v-if="!$store.getters.token">
					<Login  @openRegister="register = true"  />
					<Register :dialog="register" @closeRegister="register = false"/>
				</div>
				<v-menu offset-y v-else :close-on-content-click="false">
					<template v-slot:activator="{ on, attrs }">
						<v-btn icon dark v-bind="attrs" v-on="on">
							<v-icon>mdi-account</v-icon>
						</v-btn>
					</template>
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
							<v-btn @click="logout" text width="100%">Wyloguj</v-btn>
						</v-col>
					</v-card>
				</v-menu>
			</div>

			<template v-slot:extension>
				<v-tabs color="#da5a33" v-model="currentPage" align-with-title>
					<v-tab active-class="tab-active" v-for="(page, i) in subpages" @click.prevent="redirect(page.page)" :key="i" :href="page.page" class="d-flex align-items-center header-tab" >{{ page.title }}</v-tab>
				</v-tabs>
			</template>
		</v-app-bar>
		<v-sheet id="scrolling-techniques-3" class="overflow-y-auto"></v-sheet>
	</v-card>
</template>

<script>
	import Register from '../auth/Register'
	import Login from '../auth/Login'
	import url from '../../helpers/photo/url.js'
	import avatar from '../../helpers/photo/avatar.js'
	import axios from 'axios'

	export default{
		data(){
			return{
				currentPage: '/' + this.$route.path.split('/')[1],
				navbarPhotoSrc: '../storage/img/toolbar/8-ball.jpg',
				register: false,
				edit: false,
				user_data: {
					name: '',
					photo: '',
					id: 0
				},
				file: null,
				blob: '',
				placeholder: window.location.origin + '/storage/img/avatar/8-Ball.png'
			}
		},
		methods:{
			
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
			getAvatar(src) {
				return avatar(src);
			},
			createBlob() {
				this.blob = this.file != null ? URL.createObjectURL(this.file) : (this.user.photo != '' ? this.getAvatar(this.user.photo) : this.placeholder);
			},
			redirect(path){
				return this.$route.path != path ? this.$router.push(path) : true;
			},
			logout(){
				this.$store.dispatch('logout');
			},
			getUrl(src) {
				return url(src);
			},
			loadUserData() {
				this.user_data.name = this.user.name; 
				this.user_data.photo = this.user.photo; 
				this.user_data.id = this.user.id; 
			}
		},
		created() {
			this.$store.dispatch('fetchSubpages')
			this.$store.dispatch('fetchAllUsers');
			this.loadUserData();
		},
		components:{
			Register, Login
		},
		computed:{
			user(){
				return this.$store.getters.user;
			},
			subpages() {
				return this.$store.getters.subpages;
			},
			banner() {
				for(let page of this.subpages) {
					if(page.page.includes(this.$route.path.split('/')[1])) {
						return this.getUrl(page.photo);
					}
				}
			},

		},
		watch: {
			'$route.path'() {
				this.currentPage = '/' + this.$route.path.split('/')[1];
				
			},
			user() {
				this.loadUserData();
			}
		}



	}
</script>

<style>
	.header-tab:hover{
		text-decoration: none;
	}
	.header-tab{
		color: white!important;
	}
	.toolbar-title{
		white-space: inherit!important;
		overflow: inherit!important;
		font-size: 2.5rem!important;
		text-shadow: 0 0 8px black;
	}
	.tab-active{
		color: #da5a33!important;
		font-weight: bold!important;
	}
</style>