<template></template>

<script>
	import axios from 'axios'

	export default {
		props: ['reloadFlag'],
		watch: {
			reloadFlag() {
				if(this.reloadFlag) this.getData();
			}
		},
		
		data() {
			return {
				price_list_categories: []
			}
		},
		methods: {
			getData() {
				this.$store.commit('loading', true);
				axios.get(`/api/price_list_categories/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.price_list_categories = res.data;
					this.$emit('blockDataEmit', this.price_list_categories);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			}
		},
		
		created() {
			this.getData();
		}
	}
</script>
