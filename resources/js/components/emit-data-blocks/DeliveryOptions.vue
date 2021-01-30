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
				delivery_options: [],
			}
		},
		methods: {
			async getData(){
				this.$store.commit('loading', true);
				let endpoint = `get_all`;
				if(this.$route.path == '/koszyk') endpoint = `get_where?active=1`;

				await axios.get(`/api/delivery_options/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.delivery_options = res.data;
					this.$emit('blockDataEmit', this.delivery_options);
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