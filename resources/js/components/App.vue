<template>
	<v-app class="app">
		<Header v-if="!isPathAdmin" class="header" />
		<AdminHeader v-else />
		<router-view :class="{'admin-body': isPathAdmin }" ></router-view>
		<Loader v-if="loading" />
		<AdminSnackbar />

		<Footer v-if="!isPathAdmin" />
		<AdminFooter v-else />
	</v-app>
</template>

<script>
	import Header from './layouts/Header'
	import Footer from './layouts/Footer'
	import AdminHeader from './layouts/AdminHeader'
	import AdminFooter from './layouts/AdminFooter'
	import AdminSnackbar from './snackbar/AdminSnackbar';
	import Loader from './loader/Loader';
	import axios from 'axios'
	import parseJwt from '../helpers/auth/tokenDecoder.js'

	

	export default {
		components: {
			Header, Footer, AdminHeader, AdminFooter, AdminSnackbar, Loader
		},
		computed:{
			isPathAdmin(){
				return this.$route.path.split('/')[1] == 'admin-panel' ? true : false;
			},
			loading() {
				return this.$store.getters.loading;
			}
			
		},
		methods:{
			autoLogin(){
				if(sessionStorage.getItem('fbLogin')){
					this.$store.dispatch('fbLogin');
				}

				if(sessionStorage.getItem('authLogin')){
					this.$store.dispatch('authAutoLogin');
				}

			}
		},
		created(){
			this.autoLogin();
			this.$store.dispatch('fetchAllUsers');
			if (window.location.hash && window.location.hash == '#_=_') {
				window.location.href = window.location.origin;
			}

			$('*').css({"cursor": `'url('${window.location.origin}/storage/img/cursor/cursor.png'), auto'`})
		}

	}
</script>

<style>
	/*@import url('https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300;1,400;1,700;1,900&display=swap');*/
	/*@import url('https://fonts.googleapis.com/css2?family=Candara:1,300;1,400;1,700;1,900&display=swap');*/
	*{
		transition: all 0.15s!important;
		/*cursor: url('http://localhost:8000/storage/img/cursor/cursor.png'), auto;*/
		cursor: url('D:\\programy\\xampp 7.4\\htdocs\\bilard\\storage\\app\\public\\img\\cursor\\cursor.png'), auto;

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
	.app{
		/*font-family: 'Merriweather', serif!important;*/
		font-family: 'Candara'!important;
		font-weight: 300;
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
</style>
