<template>
	<v-container>
		
	</v-container>
</template>

<script>
	import axios from 'axios'

	export default {
		data() {
			return {
				offer: {}
			}
		},
		methods: {
			getOffer() {
				this.$store.commit('loading', true);
				axios.get(`/api/offers/get_one/${this.$route.params.id}`).then(res => {
					this.offer = res.data;
					this.$store.commit('loading', false);
				}).catch(err => {
					this.$store.commit('loading', false);
				})
			}
		},
		created() {
			this.getOffer();
		}
	}
</script>