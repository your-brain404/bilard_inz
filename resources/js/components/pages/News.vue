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
							<v-icon color="primary">mdi-comment-text-outline</v-icon>
							<i class="mr-2 text--secondary">3</i>
						</div>
						<v-icon @click="like(info.id)" color="primary" class="thumb-up mr-1">mdi-thumb-up-outline</v-icon>
						<i class="mr-2 text--secondary">{{ likesLength }}</i>
						<v-icon @click="dislike(info.id)" color="primary" class="thumb-down mr-1">mdi-thumb-down-outline</v-icon>
						<i class="mr-2 text--secondary">{{ dislikesLength }}</i>

					</div>
					<v-divider></v-divider>
					<div>
						<v-icon color="primary">mdi-tag-multiple-outline</v-icon>
						<v-chip color="primary" small><i class="">#amatorzy</i></v-chip>
						<v-chip color="primary" small><i class="">#turniej</i></v-chip>
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
	import {db} from '../../firebase/firebase.js'

	export default{
		props:['deleteFlag'],
		data(){
			return{
				news: [],
			}
		},
		created(){
			this.getNews();
			this.fetchLikes();
			this.fetchDislikes();
		},
		methods:{
			getNews(){
				axios.get('/api/news/get_all').then(res => {
					this.news = res.data;
					this.$emit('blockDataEmit', this.news);
				}).catch(err => {
					console.log(err);
				})
			},
			fetchLikes(){
				this.$store.dispatch('fetchLikes');
			},
			fetchDislikes(){
				this.$store.dispatch('fetchDislikes');
			},
			getPhoto(src){
				return url(src);
			},
			like(id){
				this.$store.commit('setLikesLength', this.likesLength+1);
				db.collection('news-likes').add({news_id: id, user_id: 1}).then(res => this.fetchLikes());
			},
			dislike(id){
				this.$store.commit('setDislikesLength', this.dislikesLength+1);
				db.collection('news-dislikes').add({news_id: id, user_id: 1}).then(res => this.fetchLikes());
			}
		},
		computed:{
			likes(){
				return this.$store.getters.getLikes;
			},
			likesLength(){
				return this.$store.getters.getLikesLength;
			},
			dislikes(){
				return this.$store.getters.getDislikes;
			},
			dislikesLength(){
				return this.$store.getters.getDislikesLength;
			}
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getNews();
				}
			}
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
</style>