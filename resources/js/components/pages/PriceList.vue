<template></template>

<script>
	import axios from 'axios'

	export default {
		props:['deleteFlag'],
		data() {
			return {
				price_list: []
			}
		},
		methods: {
			getPriceList() {
				let endpoint = `get_where?price_list_category_id=${this.$route.params.parent_id}`;
				if(this.$route.path.split('/')[1] == '/cennik') endpoint = `get_where?active=1&price_list_category_id=${this.$route.params.parent_id}`;
				this.$store.commit('loading', true);
				axios.get(`/api/price_list/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.price_list = res.data;
					this.$emit('blockDataEmit', this.price_list);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			}
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getPriceList();
				}
			}
		},
		created() {
			this.getPriceList();
		}
	}
</script>