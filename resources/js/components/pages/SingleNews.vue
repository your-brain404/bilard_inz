<template>
	<v-container class="py-12">
		<v-row>

			<v-col cols="12" md="4">
				<div class="news-picture single-news-picture" :style="`background-image: url(${getUrl(singleNews.photo)})`"></div>
			</v-col>
			<v-col cols="12" md="8" class="d-flex flex-column justify-content-center">
				<h2 class="font-weight-bold">{{ singleNews.title }}</h2>
				<p>{{ singleNews.short_description }}</p>
			</v-col>
			<v-col> {{ singleNews.description }} </v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'

	export default {
		data() {
			return {
				singleNews: {}
			}
		},
		methods: {
			getUrl(src) {
				return url(src);
			},
			getSingleNews() {
				this.$store.commit('loading', true);
				axios.get(`/api/news/get_one/${this.$route.params.id}`).then(res => {
					this.$store.commit('loading', false);
					this.singleNews = res.data;
				}).catch(err => {
					console.log(err)
					this.$store.commit('loading', false);
				})
			}
		},
		created() {
			this.getSingleNews();
		},

	}
</script>

<style>
	.single-news-picture {
		height: 300px;
	}
</style>