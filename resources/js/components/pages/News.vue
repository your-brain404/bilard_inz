<template>
	<v-container class="">
		<v-row class="justify-content-center mb-5">
			<h2 class="about-title font-weight-bold text-center first-color">Aktualności</h2>
		</v-row>
		<Pagination v-if="$route.name != 'Main'" :length="pagination.last_page" @page="setPath" />
		<v-container v-for="(info, i) in news" :key="i">
			<v-row>

				<v-col cols="12" md="3">
					<div class="news-picture" :style="`background-image: url(${getUrl(info.photo)})`"></div>
				</v-col>
				<v-col cols="12" md="9">
					<h2 class="font-weight-bold">{{ info.title }}</h2>
					<p>{{ info.short_description ? info.short_description.substring(0, 200) + '...' : '' }}</p>
					<router-link :to="`/aktualnosci/${info.id}/${slug(info.title)}`">
						<v-btn class="mt-5 offer-button"  link large block color="#da5a33" outlined>{{ info.button_name }}</v-btn>
					</router-link>

				</v-col>
			</v-row>
			<v-row>
				<v-col cols="12">
					<v-divider></v-divider>
					<div class="mb-2 d-flex">
						<v-icon color="primary" class="mr-1">mdi-calendar-month-outline</v-icon>
						<i class="text--secondary mr-2">{{ new Date(info.created_at).toLocaleString() }}</i>
						<router-link class="text--secondary mr-2" :to="`/aktualnosci/kategoria/${info.category}`">
							<v-icon color="primary">mdi-bookmark-outline</v-icon>
							<i class="category">{{ info.category }}</i>
						</router-link>
						<div class="comments">
							<v-icon @click="showCom(info.id)" color="primary">mdi-comment-text-outline</v-icon>
							<i class="mr-2 text--secondary">{{ getCommentsLength(info.id) }}</i>
						</div>

					</div>
					<v-divider></v-divider>

					<div v-if="info.tags.length > 0">
						<v-icon color="primary">mdi-tag-multiple-outline</v-icon>
						<router-link class="-link" v-for="tag in info.tags" :key="tag.id" :to="`/aktualnosci/tag/${tag.text}`">
							<v-chip class="mr-1 tag-chip " color="primary" small><i class="">#{{ tag.text }}</i></v-chip>
						</router-link>
					</div>

					<div v-if="showComments[i].show">
						<v-divider></v-divider>
						<div class="show-more-comments">
							<i  v-if="paginateComments < getCommentsLength(info.id)" @click="paginateComments += 3">Pokaż więcej komentarzy ({{ getCommentsLength(info.id) - paginateComments }})</i>
						</div>

						<div v-for="(com, j) in getPostComments(info.id)" v-if="(j > (getPostComments(info.id).length - 1) - paginateComments)" :key="com.id" class="d-flex justify-content-between mb-3">
							<p v-if="$store.getters.user.id != com.user_id" class="m-0 d-flex align-items-center">{{ com.text }}</p>
							<div class="d-flex flex-column align-items-center">
								<div class="bg-picture comment-photo" :style="`background-image: url(${getUrl($store.getters.userById(com.user_id).photo)})`"></div>
								<h5 class="m-0">{{ $store.getters.userById(com.user_id).name }}</h5>
								<i>{{ getLocaleDate(com.created) }}</i>
							</div>
							<p v-if="$store.getters.user.id == com.user_id" class="m-0 d-flex align-items-center">{{ com.text }}</p>
						</div>
						<div class="d-flex mt-4 flex-nowrap align-items-center" >
							<v-text-field class="comment-input mr-2" v-model="newComment" label="Napisz komentarz" dense rounded outlined></v-text-field>
							<v-btn rounded @click="sendComment(info.id)" color="primary">
								<v-icon left>mdi-billiards</v-icon>
								<span>Wyślij</span>
							</v-btn>
						</div>
					</div>

				</v-col>
			</v-row>
		</v-container>
		<router-link to="/aktualnosci">
			<v-col>
				<v-btn v-if="$route.path == '/'" class="mt-5" color="primary" link large block >Zobacz aktualności</v-btn>
			</v-col>
		</router-link>

		<Pagination v-if="$route.name != 'Main'" :length="pagination.last_page" @page="setPath"/>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import {user} from '../../helpers/users/users.js'
	import getDate from '../../helpers/date/date.js'
	import {db} from '../../firebase/firebase.js'
	import Pagination from '../pagination/Pagination'
	import slugify from '../../helpers/links/slug.js'

	export default{
		props:['deleteFlag'],
		data(){
			return{
				news: [],
				showComments: [],
				newComment: '',
				user: {},
				paginateComments: 3,
				pagination: {},
			}
		},
		created(){
			this.getNews();
		},
		methods:{
			slug(title) {
				return slugify(title);
			},
			setPath(event) {
				if(this.$route.params.page != event) this.$router.push({name: 'NewsListingPage', params: {page: event}});
			},
			getCommentsLength(news_id) {
				let length = 0;
				for(let com of this.comments)
					if(com.id === news_id) length++;
				return length;
			},
			getComments() {
				if(this.$route.path == '/') {
					let news_ids = [];
					for(let info of this.news) news_ids.push(info.id);
						this.$store.dispatch('fetchCommentsWhere', news_ids);
				}
				else this.$store.dispatch('fetchAllComments');
			},
			getNews(){
				let page = this.$route.params.page || 1; 
				let endpoint = `get_pagination?page=${page}`;
				if(this.$route.params.category) endpoint = `get_where?category=${this.$route.params.category}`;
				else if(this.$route.path == '/') endpoint = `get_where?home_page=1&active=1`;
				else if(this.$route.params.tag) endpoint = `get_where?tag=${this.$route.params.tag}`; 

				axios.get(`/api/news/${endpoint}`).then(res => {
					res = res.data;
					this.pagination = res.meta;
					this.news = res.data;
					this.showComments = [];
					for(let info of this.news)
						this.showComments.push({id: info.id, show: false});
					this.$emit('blockDataEmit', this.news);
					this.getComments();
				}).catch(err => {
					console.log(err);
				})
			},
			getUrl(src) {
				return url(src);
			},
			getLocaleDate(seconds) {
				return getDate(seconds);
			},
			showCom(id){
				this.paginateComments = 3;
				if(this.$store.getters.token === '') {
					this.$store.commit('setSnackbar', 'Musisz się zalogować!');
					return;
				}
				for(let i=0 ; i< this.showComments.length ; i++){
					if(this.showComments[i].id === id){
						this.showComments[i].show = !this.showComments[i].show;
					}
				}
			},
			sendComment(news_id) {
				db.collection('comments').add({
					news_id: news_id,
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
			deleteFlag(){
				if(this.deleteFlag){
					this.getNews();
				}
			},
			'$route'() {
				this.getNews();
			}
		},
		computed: {
			comments() {
				return this.$store.getters.comments;
			},
			news_length() {
				return this.news == null ? 0 : this.news.length;
			}
		},
		components: {
			Pagination
		}

	}
</script>

<style>
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
	}
	.show-more-comments {
		cursor: pointer;
		margin-bottom: 1rem;
	}
	
	
</style>