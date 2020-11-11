<template></template>

<script>
	import axios from 'axios'
	export default {
		props:['deleteFlag'],
		data() {
			return {
				shop_categories: []
			}
		},
		methods: {
			slug: title => slugify(title),
			getCategories(){
				this.$store.commit('loading', true);
				axios.get(`/api/shop_categories/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.shop_categories = res.data;
					this.$emit('blockDataEmit', this.shop_categories);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getCategories();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getCategories();
				}
			}
		},
	}
</script>