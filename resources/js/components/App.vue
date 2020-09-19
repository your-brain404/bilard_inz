<template>
	<v-app class="app">
		<Header v-if="!isPathAdmin" class="header"/>
		<AdminHeader v-else />
		<router-view :class="{'admin-body': isPathAdmin }"></router-view>
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

	export default {
		components: {
			Header, Footer, AdminHeader, AdminFooter, AdminSnackbar
		},
		computed:{
			isPathAdmin(){
				return this.$route.path.split('/')[1] == 'admin-panel' ? true : false;
			},
			
		},

	}
</script>

<style>
	@import url('https://fonts.googleapis.com/css2?family=Merriweather:ital,wght@1,300;1,400;1,700;1,900&display=swap');
	*{
		transition: all 0.15s!important;
	}
	.app{
		font-family: 'Merriweather', serif!important;
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
