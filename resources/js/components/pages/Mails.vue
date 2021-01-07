<template>
	
</template>

<script>
	import axios from 'axios'

	export default {
		props:['deleteFlag'],
		data() {
			return  {
				mails: []
			}
		},
		methods: {
			async getMails(){
				this.$store.commit('loading', true);
				await axios.get(`/api/mails/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.mails = res.data;

					this.$emit('blockDataEmit', this.mails);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getMails();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getMails();
				}
			},
		},
	}
</script>