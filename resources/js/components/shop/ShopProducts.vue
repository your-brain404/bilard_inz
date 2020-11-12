<template></template>

<script>
	import axios from 'axios'
	export default {
		props:['deleteFlag'],
		data() {
			return {
				shop_products: [],
				shop_category: {}
			}
		},
		methods: {
			slug: title => slugify(title),
			getProducts(){
				this.$store.commit('loading', true);
				axios.get(`/api/shop_products/get_where?category_id=${this.$route.params.parent_id}`).then(res => {
					this.$store.commit('loading', false);
					this.shop_products = res.data;
					this.$emit('blockDataEmit', this.shop_products);
					
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getCategory() {
				axios.get(`/api/shop_categories/get_one/${this.$route.params.parent_id}`).then(res => {
					this.$store.commit('loading', false);
					this.shop_category = res.data;
					this.$emit('parent_data', this.shop_category);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			}
		},
		created() {
			this.getProducts();
			this.getCategory();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getProducts();
					this.getCategory();
				}
			}
		},
	}
</script>