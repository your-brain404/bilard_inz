<template>
	<v-container class="py-12">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ playersDescriptions.title }}</h2>
		</v-row>
		<v-row justify="center">
			<v-col v-for="(player, i) in players" :key="i" cols="12" lg="6">
				<router-link :to="`/zawodnicy/${player.id}/${slugify(getFullName(player))}`">
					<v-card flat class="offer-card p-3">
						<div class="bg-picture player-photo" :style="`background-image: url('${url(player.photo)}')`"></div>
						<div class="card-content">
							<v-card-title class="player-name px-0">
								{{ getFullName(player) }}
							</v-card-title>

							<v-card-subtitle class="pb-0 px-0">
								{{ player.subtitle }}
							</v-card-subtitle>

							<v-card-actions class="px-0">
								<v-btn class="px-0" color="primary" text>{{ player.button_name }}</v-btn>
							</v-card-actions>
						</div>
					</v-card>
				</router-link>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import slugify from '../../helpers/links/slug.js'

	export default {
		props:['deleteFlag'],
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getPlayers();
				}
			}
		},
		data() {
			return {
				players: [],
				playersDescriptions: {},
				slugify,
				url
			}
		},
		methods: {
			async getPlayersDescriptions() {
				await axios.get('/api/players_descriptions/get_one/1').then(res => this.playersDescriptions = res.data);
			},
			async getPlayers(){
				let endpoint = 'get_all';
				if(this.$route.path == '/zawodnicy') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				await axios.get(`/api/players/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.players = res.data;
					this.$emit('blockDataEmit', this.players);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getFullName: player => `${player.first_name} ${player.last_name}`
		},
		created() {
			this.getPlayers();
			this.getPlayersDescriptions();
		},

	}
</script>

<style>
	.player-photo {
		height: 400px;
		width: 100%;
	}
	.card-content {
		padding-left: -1rem;
		padding-right: -1rem;
	}

	.player-name {
		font-weight: 600!important;
		font-size: 1.5rem!important;
	}
</style>