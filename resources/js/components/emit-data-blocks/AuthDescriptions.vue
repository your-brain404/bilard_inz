<template></template>

<script>
	import axios from 'axios'

	export default {
		data() {
			return {
				rows: [],
				table: 'auth_descriptions'
			}
		},
		methods: {
			getData(){
				this.$store.commit('loading', true);
				axios.get(`/api/${this.table}/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.rows = res.data;
					this.$emit('blockDataEmit', this.rows);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getData();
		},

	}
</script>