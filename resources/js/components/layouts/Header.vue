<template>
	<v-card class="overflow-hidden">
		<v-app-bar color="#6A76AB" dark shrink-on-scroll prominent :src="banner" fade-img-on-scroll scroll-target="#scrolling-techniques-3" extension-height="100px">
			<template v-slot:img="{ props }">
				<v-img v-bind="props" gradient="to top right, rgba(100,115,201,.7), rgba(25,32,72,.7)"></v-img>
			</template>

			<v-app-bar-nav-icon></v-app-bar-nav-icon>

			<v-toolbar-title class="toolbar-title font-weight-bold first-color pl-0" tag="router-link" to="/">Bilard Centrum Lubin</v-toolbar-title>

			<v-spacer></v-spacer>
			<div class="d-flex align-items-center">
				<v-btn v-if="$store.getters.token" outlined @click="$router.push('/admin-panel')" >
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
				<v-menu offset-y v-else>
					<template v-slot:activator="{ on, attrs }">
						<v-btn icon dark v-bind="attrs" v-on="on">
							<v-icon>mdi-account</v-icon>
						</v-btn>
					</template>
					<v-card class="d-flex justify-content-center">
						<v-col>
							<div class="w-100 d-flex justify-content-center mb-3">
								<v-avatar >
									<img src="https://randomuser.me/api/portraits/men/81.jpg" alt="">
								</v-avatar>
							</div>
							<h4>{{ user.name }}</h4>
							<v-divider></v-divider>
							<v-btn @click="logout" text width="100%">Wyloguj</v-btn>
						</v-col>
					</v-card>
				</v-menu>
			</div>

			<template v-slot:extension>
				<v-tabs color="#da5a33" v-model="currentPage" align-with-title>
					<v-tab active-class="tab-active" @click.prevent="redirect(page.page)" v-for="(page, i) in subpages" :key="i" :href="`${page.page}`" class="d-flex align-items-center header-tab" >{{ page.title }}</v-tab>
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

	export default{
		data(){
			return{
				currentPage: this.$route.path,
				navbarPhotoSrc: '../storage/img/toolbar/8-ball.jpg',
				register: false
				
			}
		},
		methods:{
			redirect(path){
				return this.$route.path != path ? this.$router.push(path) : true;
			},
			logout(){
				this.$store.dispatch('logout');
			},
			getUrl(src) {
				return url(src);
			}
		},
		created() {
			this.$store.dispatch('fetchSubpages')
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
					if(page.page === this.$route.path) {
						return this.getUrl(page.photo);
					}
				}
			},

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