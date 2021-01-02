<template></template>

<script>
	import axios from 'axios'

	export default {
		props: ['deleteFlag'],
		data() {
			return {
				rows: [],
				table: 'day_formats'
			}
		},
		watch: {
			deleteFlag() {
				if(this.deleteFlag) this.getData();
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