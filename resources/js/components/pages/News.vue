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
						<div class="d-flex justify-content-between">
							<div class="d-flex flex-column align-items-center">
								<v-avatar size="50">
									<img src="https://cdn.vuetifyjs.com/images/john.jpg" alt="">
								</v-avatar>
								<h4 class="m-0">Jarek</h4>
								<i>13.09.2020 13:59:23</i>
							</div>
							<p class="m-0 d-flex align-items-center">Lorem ipsum dolor sit amet consectetur adipisicing elit. Odit, obcaecati nesciunt.</p>
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
	import {db} from '../../firebase/firebase.js'

	export default{
		props:['deleteFlag'],
		data(){
			return{
				news: [],
				showComments: []
			}
		},
		created(){
			this.getNews();
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
			showCom(id){
				for(let i=0 ; i< this.showComments.length ; i++){
					if(this.showComments[i].id === id){
						this.showComments[i].show = !this.showComments[i].show;
					}
				}
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