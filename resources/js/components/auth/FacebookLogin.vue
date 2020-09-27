<template>
	<v-btn @click="fbLogin" color="#4569b1" class="white--text w-100">
		<v-icon left>mdi-facebook</v-icon>
		<span>Zaloguj się przez Facebooka</span>
	</v-btn>
</template>

<script>
	export default{
		data(){
			return{
				fbLink: window.location.origin+ '/api/facebook/login'
			}
		},
		methods:{
			fbLogin(){
				sessionStorage.setItem('fbLogin', true);
				window.location.replace(this.fbLink);
			}
		}
	}
</script>