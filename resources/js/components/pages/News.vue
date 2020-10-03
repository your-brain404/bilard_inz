<template>
	<v-container class="">
		<v-row class="justify-content-center mb-5">
			<h2 class="about-title font-weight-bold text-center first-color">Aktualności</h2>
		</v-row>
		<v-container v-for="(info, i) in news" :key="i">
			<v-row>

				<v-col cols="12" md="3">
					<div class="news-picture" style="background-image: url('../storage/img/news/news1.jpg')"></div>
				</v-col>
				<v-col cols="12" md="9">
					<h2 class="font-weight-bold">{{ info.title }}</h2>
					<p>{{ info.short_description.substring(0, 200) }}...</p>
					<v-btn class="mt-5 offer-button"  link large block color="#da5a33" outlined>{{ info.button_name }}</v-btn>

				</v-col>
			</v-row>
			<v-row>
				<v-col cols="12">
					<v-divider></v-divider>
					<div class="mb-2 d-flex">
						<v-icon color="primary" class="mr-1">mdi-calendar-month-outline</v-icon>
						<i class="text--secondary mr-2">{{ info.created }}</i>
						<router-link class="text--secondary mr-2" to="/">
							<v-icon color="primary">mdi-bookmark-outline</v-icon>
							<i class="category">{{ info.category }}</i>
						</router-link>
						<div class="comments">
							<v-icon @click="showCom(info.id)" color="primary">mdi-comment-text-outline</v-icon>
							<i class="mr-2 text--secondary">3</i>
						</div>

					</div>
					<v-divider></v-divider>
					<div>
						<v-icon color="primary">mdi-tag-multiple-outline</v-icon>
						<v-chip color="primary" small><i class="">#amatorzy</i></v-chip>
						<v-chip color="primary" small><i class="">#turniej</i></v-chip>
					</div>
					<div v-if="showComments[i].show">
						<v-divider></v-divider>
						<div v-for="(com, i) in comments" :key="com.id" class="d-flex justify-content-between">
							<div class="d-flex flex-column align-items-center">
								<div class="bg-picture comment-photo" :style="`background-image: url(${getUrl($store.getters.userById(com.user_id).photo)})`"></div>
								<h4 class="m-0">{{ $store.getters.userById(com.user_id).name }}</h4>
								<i>{{ com.created }}</i>
							</div>
							<p class="m-0 d-flex align-items-center">{{ com.text }}</p>
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
		<!-- <v-divider></v-divider> -->
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'
	import {user} from '../../helpers/users/users.js'
	import getDate from '../../helpers/date/date.js'
	import {db} from '../../firebase/firebase.js'

	export default{
		props:['deleteFlag'],
		data(){
			return{
				news: [],
				showComments: [],
				newComment: '',
				user: {}
			}
		},
		created(){
			this.getNews();
			this.getComments();
		},
		methods:{
			getNews(){
				axios.get('/api/news/get_all').then(res => {
					this.news = res.data;
					for(let info of this.news) this.showComments.push({id: info.id, show: false});
						this.$emit('blockDataEmit', this.news);
				}).catch(err => {
					console.log(err);
				})
			},
			getComments() {
				if(this.$route.path == '') this.$store.dispatch('fetchCommentsWhere', this.news[0].id);
				else this.$store.dispatch('fetchAllComments');
			},
			getUrl(src) {
				return url(src);
			},
			showCom(id){
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
					created: getDate()
				}).then(res => {
					this.$store.commit('setSnackbar', 'Pomyślnie dodano komentarz!');
					this.getComments();
				}).catch(err => {
					this.$store.commit('setSnackbar', 'Przepraszamy, coś poszło nie tak!');
					console.log(err);
				});
				this.newComment = '';
			}
			
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getNews();
				}
			}
		},
		computed: {
			comments() {
				return this.$store.getters.comments;
			},
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
	.comments, .thumb-up, .thumb-down{
		cursor: pointer;
	}
	.comment-input {
		height: 40px;
	}
	.comment-photo {
		width: 80px;
		height: 80px;
		border-radius: 50%;
	}
</style>