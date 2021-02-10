<template>
	<v-lazy :options="{ threshold: .5 }" transition="fade-transition" v-model="isActive">
		<v-container class="news">
			<v-row class="justify-content-center mb-5">
				<v-col>
					<h2 class="about-title font-weight-bold text-center first-color">{{ newsDescriptions.title }}</h2>
					<h3 v-if="filter" class="first-color text-center ">{{ filterText }}</h3>
				</v-col>
			</v-row>
			<Pagination v-if="$route.name != 'Main' && $route.name != 'AdminNews'" :length="pagination.last_page" @page="setPath" />
			<v-container v-if="($route.path == '/admin-panel/news' && i < 1) || $route.path != '/admin-panel/news' " v-for="(info, i) in news" :key="i">
				<v-row>

					<v-col cols="12" md="3">
						<div class="news-picture" :style="`background-image: url(${url(info.photo)})`"></div>
					</v-col>
					<v-col cols="12" md="9">
						<h2 class="font-weight-bold">{{ info.title }}</h2>
						<p>{{ info.short_description ? info.short_description.replace(/<\/?[^>]+(>|$)/g, "").substring(0, 200) + (info.short_description.replace(/<\/?[^>]+(>|$)/g, "").length > 200 ? '...' : '' ) : '' }}</p>
						<router-link :to="`/aktualnosci/${info.id}/${slugify(info.title)}`">
							<v-btn class="mt-5 offer-button"  link large block color="#da5a33" outlined>{{ info.button_name }}</v-btn>
						</router-link>

					</v-col>
				</v-row>
				<v-row>
					<v-col cols="12">
						<v-divider></v-divider>
						<div class="mb-2 d-flex flex-wrap">
							<div class="news-attribute">
								<v-icon color="primary" class="mr-1">mdi-{{ newsDescriptions.date_icon }}</v-icon>
								<i class="text--secondary mr-2">{{ new Date(info.created_at).toLocaleString() }}</i>
							</div>
							<router-link class="text--secondary mr-2 news-attribute" :to="`/aktualnosci/kategoria/${info.category.toLowerCase()}`">
								<v-icon color="primary">mdi-{{ newsDescriptions.category_icon }}</v-icon>
								<i class="category">{{ info.category }}</i>
							</router-link>
							<div @click="showCom(info.id)" class="comments news-attribute">
								<v-icon  color="primary">mdi-{{ newsDescriptions.comment_icon }}</v-icon>
								<i class="mr-2 text--secondary">{{ getCommentsLength(info.id) }}</i>
							</div>

						</div>
						<v-divider></v-divider>

						<div v-if="info.tags.length > 0">
							<v-icon color="primary">mdi-{{ newsDescriptions.tags_icon }}</v-icon>
							<router-link class="-link" v-for="tag in info.tags" :key="tag.id" :to="`/aktualnosci/tag/${tag.text}`">
								<v-chip class="mr-1 tag-chip " color="primary" small><i class="">#{{ tag.text }}</i></v-chip>
							</router-link>
						</div>

						<div v-if="showComments[i].show">
							<v-divider></v-divider>
							<div class="show-more-comments">
								<i  v-if="paginateComments < getCommentsLength(info.id)" @click="paginateComments += 3">{{ commentsDescriptions.show }} ({{ getCommentsLength(info.id) - paginateComments }})</i>
							</div>

							<div v-for="(com, j) in getPostComments(info.id)" v-if="(j > (getPostComments(info.id).length - 1) - paginateComments)" :key="com.id" :class="['d-flex', 'align-items-end', 'mb-3', {'justify-content-end': $store.getters.user.id == com.user_id}]">
								<div class="comment-chip-container" v-if="$store.getters.user.id == com.user_id">
									<v-chip color="primary" class="comment-chip"  v-html="com.text.replace('\n', '<br>')">
									</v-chip>
									<p v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator' || $store.getters.user.id == com.user_id" class="error--text text-center delete-comment" @click="deleteComment(com.id)">{{ commentsDescriptions.delete }}</p>
								</div>
								<div class="d-flex flex-column align-items-center user-comment-column">
									<div class="bg-picture comment-photo" :style="`background-image: url(${avatar($store.getters.userById(com.user_id).photo)})`"></div>
									<h5 class="m-0">{{ $store.getters.userById(com.user_id).name }}</h5>
									<i>{{ getLocaleDate(com.created) }}</i>
								</div>
								<div class="comment-chip-container" v-if="$store.getters.user.id != com.user_id">
									<v-chip   class="comment-chip" v-html="com.text.replace('\n', '<br>')">
									</v-chip>
									<p v-if="$store.getters.user.type == 'Admin' || $store.getters.user.type == 'Moderator' || $store.getters.user.id == com.user_id" class="error--text text-center delete-comment" @click="deleteComment(com)">{{ commentsDescriptions.delete }}</p>
								</div>
							</div>
							<div class="d-flex mt-4 flex-nowrap align-items-center" >
								<v-text-field class="comment-input mr-2" v-model="newComment" :label="commentsDescriptions.write" dense rounded outlined></v-text-field>
								<v-btn :disabled="newComment == ''" rounded @click="sendComment(info.id)" color="primary">
									<v-icon left>mdi-{{ commentsDescriptions.button_icon }}</v-icon>
									<span>{{ commentsDescriptions.send }}</span>
								</v-btn>
							</div>
						</div>

					</v-col>
				</v-row>
			</v-container>
			<router-link to="/aktualnosci">
				<v-col>
					<v-btn v-if="$route.path == '/'" class="mt-5" color="primary" link large block >{{ newsDescriptions.button_name }}</v-btn>
				</v-col>
			</router-link>

			<Pagination v-if="$route.name != 'Main' && $route.name != 'AdminNews'" :length="pagination.last_page" @page="setPath"/>
		</v-container>
	</v-lazy>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import avatar from '../../helpers/photo/avatar.js'
	import getLocaleDate from '../../helpers/date/date.js'
	import {db} from '../../firebase/firebase.js'
	import Pagination from '../pagination/Pagination'
	import slugify from '../../helpers/links/slug.js'

	export default{
		props:['reloadFlag'],
		data(){
			return{
				news: [],
				showComments: [],
				newComment: '',
				user: {},
				paginateComments: 3,
				pagination: {},
				commentsDescriptions: {},
				newsDescriptions: {},
				isActive: false,
				avatar,
				url,
				slugify,
				getLocaleDate
			}
		},
		created(){
			this.getNews();
			this.getCommentsDescriptions();
			this.getNewsDescriptions();
		},
		methods:{
			async getCommentsDescriptions() {
				await axios.get('/api/comments_descriptions/get_one/1').then(res => this.commentsDescriptions = res.data);
			},
			async getNewsDescriptions() {
				await axios.get('/api/news_descriptions/get_one/1').then(res => this.newsDescriptions = res.data);
			},
			setPath(event) {
				if(this.$route.params.page != event) this.$router.push({name: 'NewsListingPage', params: {page: event}});
			},
			async deleteComment(comment) {
				await db.collection('comments').doc(comment).delete().then(() => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.delete_comment);
				}).catch(err => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.error);
				})
			},
			getCommentsLength(news_id) {
				let length = 0;
				for(let com of this.comments)
					if(com.id === news_id) length++;
				return length;
			},
			getComments() {
				let news_ids = [];
				for(let info of this.news) {
					news_ids.push(info.id);
				}
				this.$store.dispatch('fetchCommentsWhere', news_ids);
			},
			async getNews(){
				let page = this.$route.params.page || 1; 
				let endpoint = `get_pagination?page=${page}`;
				if(this.$route.params.category) endpoint = `get_where?category=${this.$route.params.category}`;
				else if(this.$route.path == '/') endpoint = `get_where?home_page=1&active=1`;
				else if(this.$route.params.tag) endpoint = `get_where?tag=${this.$route.params.tag}`; 
				else if(this.$route.path == '/admin-panel/news') endpoint = `get_all`; 

				this.$store.commit('loading', true);
				await axios.get(`/api/news/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					if(endpoint != 'get_all') res = res.data;
					this.pagination = res.meta;
					this.news = res.data;
					this.showComments = [];
					for(let info of this.news)
						this.showComments.push({id: info.id, show: false});
					this.$emit('blockDataEmit', this.news);
					this.getComments();
				}).catch(err => {
					console.log(err);
					this.$store.commit('loading', false);
				})
			},
			showCom(id){
				this.paginateComments = 3;
				if(this.$store.getters.token === '') {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.login_require);
					return;
				}
				for(let i=0 ; i< this.showComments.length ; i++){
					if(this.showComments[i].id === id){
						this.showComments[i].show = !this.showComments[i].show;
					}
				}
			},
			async sendComment(news_id) {
				if(this.newComment == '') return;
				let comment = {
					news_id: parseInt(news_id),
					user_id: this.$store.getters.user.id,
					text: this.newComment,
					created: Date.now()
				};
				await db.collection('comments').add(comment).then(res => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.add_comment);
				}).catch(err => {
					this.$store.commit('setSnackbar', this.$store.getters.snackbarAlerts.error);
					console.log(err);
				});
				this.newComment = '';
			},
			getCommentsLength(news_id) {
				let length = 0;
				for(let com of this.comments) {
					if(com.news_id === news_id) length++;
				}
				return length;
			},
			getPostComments(news_id) {
				let comments = [];
				for(let com of this.comments) {
					if(com.news_id === news_id) comments.push(com);
				}
				return comments;
			}
		},
		watch:{
			reloadFlag() {
				if(this.reloadFlag) this.getNews();
			},
			'$route'() {
				this.getNews();
				this.$emit('meta_title', this.newsDescriptions.title);
			}
		},
		destroyed() {
			this.$store.commit('users', []);
		},
		computed: {
			comments() {
				return this.$store.getters.comments;
			},
			news_length() {
				return this.news == null ? 0 : this.news.length;
			},
			filter() {
				return this.$route.params.category || this.$route.params.tag ? true : false;
			},
			filterText() {
				return this.$route.params.category ? `${this.newsDescriptions.filter_category} ${this.$route.path.split('/')[3][0].toUpperCase()}${this.$route.path.split('/')[3].substring(1)}` : `${this.newsDescriptions.filter_tag} ${this.$route.path.split('/')[3]}`; 
			}
		},
		components: {
			Pagination
		}

	}
</script>

<style>
	@media(max-width: 960px) {
		.news-picture {
			height: 300px!important;
		}
	}
	@media(max-width: 500px) {
		.news-attribute {
			width: 100%;
			margin-bottom: 1rem;
		}
	}
	.news p, .news i {
		font-size: 1rem;
	}
	.category{
		transition: all 0.15s;
		color: rgba(0,0,0,.6);
	}
	.category:hover{
		color: var(--first-color)!important;
	}
	.news-picture{
		background-size: cover;
		background-position: center;
		background-repeat: no-repeat;
		width: 100%;
		height: 100%;
	}
	.comments, .thumb-up, .thumb-down, .tag-chip{
		cursor: pointer!important;
	}
	.comment-input {
		height: 40px;
	}
	.comment-photo {
		width: 60px;
		height: 60px;
		border-radius: 50%;
		margin-bottom: .7rem;
	}
	.show-more-comments {
		cursor: pointer;
		margin-bottom: 1rem;
	}
	.user-comment-column {
		line-height: 12px;
	}

	
	
</style>