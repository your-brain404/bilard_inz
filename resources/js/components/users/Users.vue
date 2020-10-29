<template></template>

<script>
	export default {
		props:['deleteFlag'],
		computed: {
			users() {
				return this.$store.getters.users;
			},
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.$emit('blockDataEmit', this.users);
				}
			},
			users() {
				this.$emit('blockDataEmit', this.users);
				console.log(this.users, 'users')
			},
		},
		created() {
			this.$emit('blockDataEmit', this.users);
			console.log(this.users, 'created')
		}
	}
</script>