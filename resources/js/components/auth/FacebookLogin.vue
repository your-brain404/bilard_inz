<template>
	<v-btn @click="fbLogin" color="#4569b1" class="white--text w-100">
		<v-icon left>mdi-{{ auth_descriptions.fb_icon }}</v-icon>
		<span>{{ auth_descriptions.fb_button_name }}</span>
	</v-btn>
</template>

<script>
	import axios from 'axios'

	export default{
		props: ['auth_descriptions'],
		data(){
			return{
				fbLink: window.location.origin + '/api/facebook/login',
			}
		},
		methods:{
			fbLogin(){
				localStorage.setItem('fbLogin', true);
				window.location.replace(this.fbLink);
			},
			
		},
		
	}
</script>