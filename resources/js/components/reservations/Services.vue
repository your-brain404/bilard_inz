<template></template>

<script>
	import axios from 'axios'
	
	export default {
		props:['deleteFlag'],
		data() {
			return {
				services: []
			}
		},
		methods: {
			slug: title => slugify(title),
			getServices(){
				this.$store.commit('loading', true);
				axios.get(`/api/services/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.services = res.data;
					this.$emit('blockDataEmit', this.services);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getUrl: src => url(src),
		},
		created() {
			this.getServices();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getServices();
				}
			}
		},

	}
</script>