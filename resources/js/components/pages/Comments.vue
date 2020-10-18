<template>
	<div class="comments">

		<div v-if="comments.length > 3 && paginateComments < comments.length" class="show-more-comments">
			<i v-if="paginateComments < comments.length" @click="paginateComments += 3">Pokaż więcej komentarzy ({{ comments.length - paginateComments }})</i>
		</div>
		<div v-else class="show-more-comments">
			<i @click="paginateComments = 3">Zwiń komentarze</i>
		</div>


		<div v-for="(com, j) in getPostComments($route.params.id)" v-if="(j > (getPostComments($route.params.id).length - 1) - paginateComments)" :key="com.id" class="d-flex justify-content-between align-items-start mb-3">
			<v-chip class="comment-chip" v-if="$store.getters.user.id != com.user_id">
				{{ com.text }}
			</v-chip>
			<div class="d-flex flex-column align-items-center">
				<div class="bg-picture comment-photo" :style="`background-image: url(${getUrl($store.getters.userById(com.user_id) != undefined ? $store.getters.userById(com.user_id).photo : null)})`"></div>
				<h5 class="m-0">{{ $store.getters.userById(com.user_id) != undefined ? $store.getters.userById(com.user_id).name : null }}</h5>
				<i>{{ getLocaleDate(com.created) }}</i>
			</div>
			<v-chip v-if="$store.getters.user.id == com.user_id" color="primary" class="comment-chip">
				{{ com.text }}
			</v-chip>
		</div>
		<div class="d-flex mt-12 flex-nowrap align-items-center" >
			<v-textarea class="comment-textarea mr-2" v-model="newComment" label="Napisz komentarz" dense rounded outlined></v-textarea>
			<v-btn rounded @click="sendComment($route.params.id)" color="primary">
				<v-icon left>mdi-billiards</v-icon>
				<span>Wyślij</span>
			</v-btn>
		</div>

	</div>
</template>

<script>
	import getDate from '../../helpers/date/date.js'
	import url from '../../helpers/photo/url.js'
	import {db} from '../../firebase/firebase.js'

	export default {
		data() {
			return {
				paginateComments: 3,
				newComment: '',
			}
		},
		computed: {
			comments() {
				return this.$store.getters.comments;
			},
		},
		methods: {
			getComments() {
				this.$store.dispatch('fetchCommentsWhere', [this.$route.params.id]);
			},
			getUrl(src) {
				return url(src);
			},
			getLocaleDate(seconds) {
				return getDate(seconds);
			},
			getPostComments(news_id) {
				let comments = [];
				for(let com of this.comments) {
					if(com.news_id == news_id) comments.push(com);
				}
				return comments;
			},
			getCommentsLength(news_id) {
				let length = 0;
				for(let com of this.comments)
					if(com.id == news_id) length++;
				console.log(length)
				return length;
			},
			sendComment(news_id) {
				db.collection('comments').add({
					news_id: parseInt(news_id),
					user_id: this.$store.getters.user.id,
					text: this.newComment,
					created: Date.now()
				}).then(res => {
					this.$store.commit('setSnackbar', 'Pomyślnie dodano komentarz!');
					this.getComments();
				}).catch(err => {
					this.$store.commit('setSnackbar', 'Przepraszamy, coś poszło nie tak!');
					console.log(err);
				});
				this.newComment = '';
			},
		},
		created() {
			this.getComments();
		}
	}
</script>

<style>
	.comments p, .comments i {
		font-size: 1rem;
	}
	.comment-chip {
		height: auto!important;
		white-space: normal!important;
		max-width: 70%!important;
		padding: .2rem .7rem!important;
	}

	.comment-textarea .v-text-field__details {
		display: none;
	}
</style>