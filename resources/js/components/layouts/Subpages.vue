<template></template>
<script>
	import axios from 'axios'
	
	export default {
		data(){
			return{
				subpages: []
			}
		},
		methods:{
			getData(){
				axios.get('/api/subpages/get_all').then(res => {
					if(res.data.length > 0) this.subpages = res.data;
					this.$emit('blockDataEmit', this.subpages);
				});
			}
		},
		created(){
			this.getData();
		},
	}
</script>