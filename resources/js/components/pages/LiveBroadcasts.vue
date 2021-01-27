<template>
	<v-container class="py-12 history">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ liveBroadcastsDescriptions.title }}</h2>
		</v-row>
		<v-row v-for="(live, i) in liveBroadcasts" :key="i" class="mb-0">
			<v-col cols="12" class="d-flex flex-column justify-content-center">
				<a target="_blank" :href="live.link">
					<button class="live-button">{{ live.title }}</button>
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

<style scoped>
	.live-button {
		border: 1px solid var(--first-color);
		background-color: white;
		color: var(--first-color);
		padding: .5rem 1rem;
		outline: unset;
		transition: .15s all;
		width: 100%;
		font-weight: 500;
		letter-spacing: .0892857143em;
		text-transform: uppercase;
		font-size: .875rem;
	}
	.live-button:hover {
		background-color: var(--first-color);
		color: white;
	}
</style>