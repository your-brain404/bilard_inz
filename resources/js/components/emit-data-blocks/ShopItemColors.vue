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
				shop_item_colors: []
			}
		},
		methods: {
			getData(){
				this.$store.commit('loading', true);
				axios.get(`/api/shop_item_colors/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.shop_item_colors = res.data;
					this.$emit('blockDataEmit', this.shop_item_colors);
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