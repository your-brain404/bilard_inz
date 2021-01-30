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
				shop_items: [],
				shop_product: {}
			}
		},
		methods: {
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
					this.$emit('parentData', this.shop_product);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getData() {
				this.getItems();
				this.getProduct();
			}
		},
		created() {
			this.getData();
		},
		
	}
</script>