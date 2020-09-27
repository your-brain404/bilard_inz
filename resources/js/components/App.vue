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
	import axios from 'axios'
	import parseJwt from '../helpers/auth/tokenDecoder.js'

	export default {
		components: {
			Header, Footer, AdminHeader, AdminFooter, AdminSnackbar
		},
		computed:{
			isPathAdmin(){
				return this.$route.path.split('/')[1] == 'admin-panel' ? true : false;
			},
			
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
			console.log(parseJwt('eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjMxY2NmNDBlY2U1ZTE3MzMyODFjODhiMjM5MmQ5N2U5M2ViZTFlOGMwYTM2ZTMwMTllMmIyMWRjNGUxMmQzYjQwMjc1ZjIwMmNjZDllYmM3In0.eyJhdWQiOiIxIiwianRpIjoiMzFjY2Y0MGVjZTVlMTczMzI4MWM4OGIyMzkyZDk3ZTkzZWJlMWU4YzBhMzZlMzAxOWUyYjIxZGM0ZTEyZDNiNDAyNzVmMjAyY2NkOWViYzciLCJpYXQiOjE2MDEyMDg2MjAsIm5iZiI6MTYwMTIwODYyMCwiZXhwIjoxNjMyNzQ0NjIwLCJzdWIiOiIyNyIsInNjb3BlcyI6W119.JpdiSKKe6CKmHo5YdKZwbvDNnyZTYMqx7Ic2k_1E-ggoyYczhmwc8RThPQiG-LV9igdgAaOySv2rgwdrquLMTKXsJFPegHHcaV_3wbf0-r_em9Ir2VuyVCW_quyfzVJXkreGxjuz1Zgym_iCwpJNLj8dDrpaqgpoVzcLRPYhdCE2FJ0niYVFmaC8ULrBmtfs6lRD9TidDpPADlKDDWXOHIcApTmNjLRhcCjaokrt2UDwpaH92-BPZQPm-F1dtH8MGH7f3I8ZcFY7EcX3GLLhFca2HU0Q4FGRN7bvLRKv5BI33gSOWG9E95U5IQT7U0Bo4p1vhigdLJw4juetTZn2z9FvFx3sskxK3pcOiPcIp0j_g68v2HFmPDSxrATZ2MiaFMc3T9zoGnSrmkQ_H1pRfdysGro2KMQ9glYuy4xqNPNZZW6XvYeD-f8jPD-82fTnEvyg7KDyz_Ece181p31Itnb-ywRLwbNejT1iPxRlkO5cPy47HrfWhN48athc-HIrREch2IF9bwnVOXqvJq-o76EpSsxMcd7QLp8IzmxOoBjYnLjXShLe-1jzezJvRH0_H7r_SvCQ21U5iwGeIY8ClZLUWVQ-MAZ6kTFn7QxF6luwB-3i45gho1_fTrGoVXJL9fGQfWbblDuNcYRZ02v03Nh0Wf1hH9AfwiTL7rfgv0Q'));
		}

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
