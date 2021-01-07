<template></template>

<script>
	import axios from 'axios'

	export default {
		props:['deleteFlag'],
		
		data() {
			return {
				price_list_categories: []
			}
		},
		methods: {
			getCategories() {
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
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getCategories();
				}
			}
		},
		created() {
			this.getCategories();
		}
	}
</script>
