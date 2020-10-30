<template></template>

<script>
	import axios from 'axios'

	export default {
		props:['deleteFlag'],
		data() {
			return {
				users: []
			}
		},
		methods: {
			getUsers(){
				this.$store.commit('loading', true);
				axios.get(`/api/users/get_where`).then(res => {
					this.$store.commit('loading', false);
					this.users = res.data;

					this.$emit('blockDataEmit', this.users);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getUsers();
				}
			},
			
		},
		created() {
			
			this.getUsers();
		}
	}
</script>