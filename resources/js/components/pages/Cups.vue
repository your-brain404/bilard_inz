<template>
	<v-container class="py-12">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Puchary</h2>
		</v-row>
		<v-row>
			<v-col v-for="(cup, i) in cups" :key="i" cols="12" lg="4">
				<router-link :to="`/puchary/${cup.id}/${slug(cup.title)}`">
					<v-card flat class="offer-card">
						<div class="bg-picture cup-photo" :style="`background-image: url('${getUrl(cup.photo)}')`"></div>

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
		props:['deleteFlag'],
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getCups();
				}
			}
		},
		data() {
			return {
				cups: []
			}
		},
		methods: {
			slug: title => slugify(title),
			getCups(){
				let endpoint = 'get_all';
				if(this.$route.path == '/zawodnicy') endpoint = 'get_where?active=1';
				this.$store.commit('loading', true);
				axios.get(`/api/cups/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.cups = res.data;
					this.$emit('blockDataEmit', this.cups);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getUrl: src => url(src),
		},
		created() {
			this.getCups();
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
</style>