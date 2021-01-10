<template>
	<v-container class="py-12 history">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ liveBroadcastsDescriptions.title }}</h2>
		</v-row>
		<v-row v-for="(live, i) in liveBroadcasts" :key="i" class="mb-0">
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

	export default {
		props:['deleteFlag'],
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getLiveBroadcasts();
				}
			}
		},
		data() {
			return {
				liveBroadcasts: [],
				liveBroadcastsDescriptions: {},
			}
		},
		methods: {
			async getLiveBroadcastsDescriptions() {
				await axios.get('/api/live_broadcasts_descriptions/get_one/1').then(res => this.liveBroadcastsDescriptions = res.data);
			},
			async getLiveBroadcasts(){
				let endpoint = 'get_all';
				if(this.$route.path == '/transmisje') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				await axios.get(`/api/live_broadcasts/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.liveBroadcasts = res.data;
					this.$emit('blockDataEmit', this.liveBroadcasts);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getLiveBroadcasts();
			this.getLiveBroadcastsDescriptions();
		},

	}
</script>