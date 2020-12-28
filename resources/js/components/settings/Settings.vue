<template></template>

<script>
	import axios from 'axios'

	export default {
		data() {
			return {
				settings: {}
			}
		},
		methods: {
			getSettings(){
				this.$store.commit('loading', true);
				axios.get(`/api/settings/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.settings = res.data;
					this.$emit('blockDataEmit', this.settings);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getSettings();
		},

	}
</script>