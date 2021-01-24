<template>
	<div class="comments">

		<div v-if="comments.length > 3 && paginateComments < comments.length" class="show-more-comments">
			<i v-if="paginateComments < comments.length" @click="paginateComments += 3">{{ commentsDescriptions.show }} ({{ comments.length - paginateComments }})</i>
		</div>
		<div v-if="paginateComments != 3" class="show-more-comments">
			<i @click="paginateComments = 3">{{ commentsDescriptions.hide }}</i>
		</div>


		<div v-for="(com, j) in comments" v-if="(j > (comments.length - 1) - paginateComments)" :key="com.id" :class="['d-flex', 'w-100', 'align-items-end', 'mb-3', {'justify-content-end': $store.getters.user.id == com.user_id}]">
			<div class="comment-chip-container" v-if="$store.getters.user.id == com.user_id">
				<v-chip color="primary" class="comment-chip"  v-html="com.text.replace('\n', '<br>')">
				</v-chip>
				<p v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator' || $store.getters.user.id == com.user_id" class="error--text text-center delete-comment" @click="deleteComment(com.id)">{{ commentsDescriptions.delete }}</p>
			</div>
			<div class="d-flex flex-column align-items-center">
				<div class="bg-picture comment-photo" :style="`background-image: url(${avatar($store.getters.userById(com.user_id) != undefined ? $store.getters.userById(com.user_id).photo : null)})`"></div>
				<h5 class="m-0">{{ $store.getters.userById(com.user_id) != undefined ? $store.getters.userById(com.user_id).name : null }}</h5>
				<i>{{ getLocaleDate(com.created) }}</i>

			</div>
			<div class="comment-chip-container" v-if="$store.getters.user.id != com.user_id">
				<v-chip class="comment-chip" v-html="com.text.replace('\n', '<br>')">
				</v-chip>
				<p v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator' || $store.getters.user.id == com.user_id" class="error--text text-center delete-comment" @click="deleteComment(com)">{{ commentsDescriptions.delete }}</p>
			</div>
		</div>
		<div class="d-flex mt-12 align-items-center new-comment-container" >
			<v-textarea @keyup.enter="$event.ctrlKey ? newComment += '\n' : sendComment($route.params.id)"  class="comment-textarea mr-2 new-comment-item" v-model="newComment" :label="commentsDescriptions.write" dense rounded outlined></v-textarea>
			<v-btn class="new-comment-item" :disabled="newComment == ''" rounded @click="sendComment($route.params.id)" color="primary">
				<v-icon left>mdi-{{ commentsDescriptions.button_icon }}</v-icon>
				<span>{{ commentsDescriptions.send }}</span>
			</v-btn>
		</div>

	</div>
</template>

<script>
	import getLocaleDate from '../../helpers/date/date.js'
	import url from '../../helpers/photo/url.js'
	import avatar from '../../helpers/photo/avatar.js'
	import {db} from '../../firebase/firebase.js'
	import axios from 'axios'

	export default {
		props: ['commentsDescriptions'],
		data() {
			return {
				paginateComments: 3,
				newComment: '',
				avatar,
				getLocaleDate,
			}
		},
		computed: {
			comments() {
				return this.$store.getters.comments;
			},
		},
		methods: {
			getComments() {
				this.$store.dispatch('fetchCommentsWhere', [parseInt(this.$route.params.id)]);
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
				return length;
			},
			async deleteComment(comment) {
				await db.collection('comments').doc(comment.id).delete().then(() => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.delete_comment);
				}).catch(err => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.error);
				})
			},
			async sendComment(news_id) {
				if(this.newComment == '') return;
				let comment = {
					news_id: parseInt(news_id),
					user_id: this.$store.getters.user.id,
					text: this.newComment,
					created: Date.now()
				};
				await db.collection('comments').add(comment);
				this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.add_comment);
				this.newComment = '';
			},
		},
		created() {
			this.getComments();
		},
		destroyed() {
			this.$store.commit('users', []);
		}
	}
</script>

<style>
	.new-comment-container {
		flex-wrap: nowrap;
	}
	@media(max-width: 570px) {
		.new-comment-container {
			flex-wrap: wrap;
		}
		.new-comment-item {
			width: 100%;
		}
		button.new-comment-item {
			margin-top: 1rem; 
		}
	}
	.comments p, .comments i {
		font-size: 1rem;
	}
	.comment-chip {
		height: auto!important;
		white-space: normal!important;
		padding: .2rem .7rem!important;
		font-size: 1rem!important;
	}

	.comment-textarea .v-text-field__details {
		display: none;
	}
	.delete-comment {
		font-size: .9rem!important;
		cursor: pointer;
		margin-bottom: 0!important;
	}
	.comment-chip-container {
		max-width: 70%!important;
		padding-left: 1rem;
		padding-right: 1rem;
	}
</style>