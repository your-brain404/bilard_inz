<template>
	<v-app class="app">
		<Header v-if="!isPathAdmin" class="header" />
		<AdminHeader v-else />
		<router-view :class="{'admin-body': isPathAdmin }" ></router-view>
		<Loader v-if="loading" />
		<AdminSnackbar />

		<Footer v-if="!isPathAdmin" />
		<!-- <AdminFooter v-else /> -->
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

			$('*').css({"cursor": `url('${window.location.origin}/storage/img/cursor/cursor.png'), auto`})
		}

	}
</script>

<style>
	*{
		transition: all 0.15s!important;

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
