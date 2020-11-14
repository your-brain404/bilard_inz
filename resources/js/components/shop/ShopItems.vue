<template></template>

<script>
	import axios from 'axios'
	export default {
		props:['deleteFlag'],
		data() {
			return {
				shop_items: [],
				shop_product: {}
			}
		},
		methods: {
			slug: title => slugify(title),
			getItems(){
				this.$store.commit('loading', true);
				axios.get(`/api/shop_items/get_where?product_id=${this.$route.params.parent_id}`).then(res => {
					this.$store.commit('loading', false);
					this.shop_items = res.data;
					this.$emit('blockDataEmit', this.shop_items);
					
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getProduct() {
				axios.get(`/api/shop_products/get_one/${this.$route.params.parent_id}`).then(res => {
					this.$store.commit('loading', false);
					this.shop_product = res.data;
					this.$emit('parent_data', this.shop_product);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			}
		},
		created() {
			this.getItems();
			this.getProduct();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getItems();
					this.getProduct();
				}
			}
		},
	}
</script>