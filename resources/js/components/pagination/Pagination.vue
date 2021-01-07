<template>
  <div class="text-center">
    <v-pagination v-model="page" :length="length" :total-visible="7" color="primary" ></v-pagination>
  </div>
</template>

<script>
  export default {
  	props: ['length', 'changePage'],
  	data() {
  		return {
  			page: parseInt(this.$route.params.page) || 1
  		}
  	},
  	watch: {
  		page() {
  			this.$emit('page', this.page)
  		},
  		'$route.params.page'() {
  			this.page = this.$route.params.page == this.page ? this.page : (this.$route.params.page == undefined ? 1 : parseInt(this.$route.params.page));
  		}
  	}
  }
</script>