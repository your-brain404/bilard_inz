<template>
	<v-app class="app">
		
		<Header :openLogin="openLogin" v-if="!isPathAdmin" class="header" />
		
		
		<AdminHeader v-else />
		
		
		<router-view @openLogin="openLoginEvent" @meta_title="title = $event" :class="{'admin-body': isPathAdmin }" ></router-view>
		
		<Loader v-if="loading" />
		<AdminSnackbar />
		
		<Footer v-if="!isPathAdmin" />
		
		<Cookies v-if="!isPathAdmin" />
	</v-app>
</template>

<script>
	import Header from './layouts/Header'
	import Footer from './layouts/Footer'
	import AdminHeader from './layouts/AdminHeader'
	import AdminSnackbar from './snackbar/AdminSnackbar';
	import Loader from './loader/Loader';
	import axios from 'axios'
	import Cookies from '@/components/cookies/Cookies'

	function recaptcha() {
		if(window.location.href.split('/').includes('admin-panel')) document.getElementsByClassName('grecaptcha-badge')[0].style.display = 'none';
		else document.getElementsByClassName('grecaptcha-badge')[0].style.display = '';
	}

	

	window.addEventListener('load', function () {
		recaptcha()
	})


	export default {
		
		metaInfo() {
			return {
				title: this.title,
				titleTemplate: '%s - ' + this.settings.company,
			}
		},
		components: {
			Header, Footer, AdminHeader, AdminSnackbar, Loader, Cookies
		},
		data() {
			return {
				title: '',
				openLogin: false
			}
		},
		watch: {
			currentSubpage: {
				deep: true,
				handler() {
					if(this.currentSubpage) this.setMetaTitle(); 
				}
			},
			'$route.path'() {
				this.setMetaTitle();
				recaptcha();
				this.checkSubpageEntry();
			},
			subpages() {
				if(this.subpages.length > 0) this.checkSubpageEntry();
			},
			'$store.getters.snackbarAlerts.id'() {
				if(this.$store.getters.snackbarAlerts.id) {
					if(this.$route.query.aktywacja == '1') {
						this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.activated_account_success);
					} 
				}
			}
		},
		computed:{
			isPathAdmin(){
				return this.$route.path.split('/')[1] == 'admin-panel' ? true : false;
			},
			loading() {
				return this.$store.getters.loading;
			},
			subpages() {
				return this.$store.getters.subpages;
			},
			currentSubpage() {
				return this.$store.getters.currentSubpage;
			},
			settings() {
				return this.$store.getters.settings;
			}
		},
		methods:{
			openLoginEvent() {
				this.openLogin = true; 
				setTimeout(() => this.openLogin = false, 20);
			},
			checkSubpageEntry() {
				for(let subpage of this.subpages) {
					if(subpage.page == '/' + this.$route.path.split('/')[1]) {
						if(!subpage.active && subpage.page != '/koszyk') this.$router.push('/');
					}
				}
			},
			setMetaTitle() {
				this.$store.commit('currentSubpage', this.$route.path);
				if(this.$route.path.split('/').includes('admin-panel')) this.title = 'Panel Administracyjny';
				else this.title = this.currentSubpage ? this.currentSubpage.title : '';
			},
			
			autoLogin(){
				if(localStorage.getItem('fbLogin')){
					this.$store.dispatch('fbLogin');
				}

				if(localStorage.getItem('authLogin')){
					this.$store.dispatch('authAutoLogin');
				}

			},
			setCart() {
				if(localStorage.getItem('cart') != null) {
					this.$store.commit('cart', JSON.parse(localStorage.getItem('cart')));
				}
			},
			
		},
		created(){
			this.autoLogin();
			this.setCart();
			this.setMetaTitle();
			this.$store.dispatch('settings');
			this.$store.dispatch('contact');
			this.$store.dispatch('snackbarAlerts');
			
			if (window.location.hash && window.location.hash == '#_=_') {
				window.location.href = window.location.origin;
			}
			
			$('*').css({"cursor": `url('${window.location.origin}/storage/img/cursor/cursor.png'), auto`})
		},


	}
</script>

<style>
	*{
		transition: all 0.15s!important;

	}
	.header {
		border-radius: unset!important;
	}
	::-webkit-scrollbar {
		width: 15px;
	}

	::-webkit-scrollbar-track {
		background: rgb(68,0,1);
		background: linear-gradient(101deg, rgba(68,0,1,1) 21%, rgba(105,63,39,1) 47%, rgba(90,42,15,1) 71%);
	}
	::-webkit-scrollbar-thumb {
		background-image: url(/images/cue.png?be9043c…);
		width: 900%;
		height: 223px;
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
	}
	.app, .ql-container{
		font-family: 'Candara'!important;
		font-weight: 300;
	}
	.ql-editing {
		left: unset!important;
	}
	.first-color{
		color: #da5a33;
	}
	.first-bgc{
		background-color: #da5a33!important;
	}
	:root{
		--first-color: rgb(218, 90, 51);
	}
	a:hover{
		text-decoration: none!important;
	}
	blockquote {
		border-left: 4px solid #ccc;
		margin-bottom: 5px;
		margin-top: 5px;
		padding-left: 16px;
	}
</style>
