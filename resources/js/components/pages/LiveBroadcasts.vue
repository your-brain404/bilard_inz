<template>
	<v-container class="py-12 history">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Transmisje na żywo</h2>
		</v-row>
		<v-row v-for="(live, i) in live_broadcasts" :key="i" class="mb-0">
			<v-col cols="12" class="d-flex flex-column justify-content-center">
				<a target="_blank" :href="live.link">
					<v-btn color="#da5a33" outlined class="w-100">{{ live.title }}</v-btn>
				</a>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'

	export default {
		data() {
			return {
				live_broadcasts: []
			}
		},
		methods: {
			getLiveBroadcasts(){
				let endpoint = 'get_all';
				if(this.$route.path == '/transmisje') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				axios.get(`/api/live_broadcasts/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.live_broadcasts = res.data;
					this.$emit('blockDataEmit', this.live_broadcasts);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getUrl: src => url(src),
		},
		created() {
			this.getLiveBroadcasts();
		},

	}
</script>