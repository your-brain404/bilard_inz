<template>
	<v-container>
		
	</v-container>
</template>

<script>
	import axios from 'axios'

	export default {
		data() {
			return {
				singleNews: {}
			}
		},
		methods: {
			getSingleNews() {
				axios.get(`/api/news/get_one/${this.$route.params.id}`).then(res => {
					this.singleNews = res.data;
				}).catch(err => console.log(err))
			}
		},
		created() {
			this.getSingleNews();
		}
	}
</script>