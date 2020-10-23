<template>
	<v-container class="py-12">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Zawodnicy</h2>
		</v-row>
		<v-row justify="center">
			<v-col v-for="(player, i) in players" :key="i" cols="12" lg="6">
				<router-link :to="`/zawodnicy/${player.id}/${slug(getFullName(player))}`">
					<v-card flat class="offer-card">
						<div class="bg-picture player-photo" :style="`background-image: url('${getUrl(player.photo)}')`"></div>
						<v-card-title class="player-name">
							{{ getFullName(player) }}
						</v-card-title>

						<v-card-subtitle class="pb-0">
							{{ player.subtitle }}
						</v-card-subtitle>

						<v-card-actions>
							<v-btn color="primary" text>Czytaj więcej</v-btn>
						</v-card-actions>
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
		data() {
			return {
				players: []
			}
		},
		methods: {
			slug: title => slugify(title),
			getPlayers(){
				let endpoint = 'get_all';
				if(this.$route.path == '/zawodnicy') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				axios.get(`/api/players/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.players = res.data;
					this.$emit('blockDataEmit', this.players);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getUrl: src => url(src),
			getFullName: player => `${player.first_name} ${player.last_name}`
		},
		created() {
			this.getPlayers();
		},

	}
</script>

<style>
	.player-photo {
		height: 400px;
		width: 100%;
	}

	.player-name {
		font-weight: 600!important;
		font-size: 1.5rem!important;
	}
</style>