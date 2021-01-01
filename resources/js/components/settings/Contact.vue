<template></template>

<script>
	import axios from 'axios'

	export default {
		data() {
			return {
				contact: {}
			}
		},
		methods: {
			getContact(){
				this.$store.commit('loading', true);
				axios.get(`/api/contact/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.contact = res.data;
					this.$emit('blockDataEmit', this.contact);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getContact();
		},

	}
</script>