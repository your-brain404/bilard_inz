<template>
	<v-container class="py-12">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ cupsDescriptions.title }}</h2>
		</v-row>
		<v-row>
			<v-col v-for="(cup, i) in cups" :key="i" cols="12" md="4">
				<router-link :to="`/puchary/${cup.id}/${slugify(cup.title)}`">
					<v-card flat class="offer-card">
						<div class="bg-picture cup-photo" :style="`background-image: url('${url(cup.photo)}')`"></div>

						<v-card-title class="player-name pb-0">
							{{ cup.title }}
						</v-card-title>

						<v-card-actions>
							<v-btn color="primary" text>{{ cup.button_name }}</v-btn>
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
		props: ['reloadFlag'],
		watch: {
			reloadFlag() {
				if(this.reloadFlag) this.getCups();
			}
		},
		data() {
			return {
				cups: [],
				cupsDescriptions: {},
				slugify,
				url
			}
		},
		methods: {
			async getCupsDescriptions() {
				await axios.get('/api/cups_descriptions/get_one/1').then(res => this.cupsDescriptions = res.data);
			},
			async getCups(){
				let endpoint = 'get_all';
				if(this.$route.path == '/zawodnicy') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				await axios.get(`/api/cups/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.cups = res.data;
					this.$emit('blockDataEmit', this.cups);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getCups();
			this.getCupsDescriptions();
		},
		

	}
</script>

<style>
	.cup-photo {
		background-size: contain;
		width: auto;
		height: 200px;
		margin: auto;
	}
	.v-card__title {
		word-break: unset!important;
	}
</style>