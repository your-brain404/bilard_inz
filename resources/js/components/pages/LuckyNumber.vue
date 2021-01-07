<template>
	<v-container v-if="active" class="py-12 history">
		<v-row justify="center">
			<v-col>
				<h2 class="about-title font-weight-bold text-center first-color my-0 mb-0">{{ lucky_number[0].title }}</h2>
				<h3 class="first-color text-center ">{{ lucky_number[0].subtitle }}</h3>

			</v-col>
		</v-row>
		<v-row  :key="i" class="mb-0">
			<v-col cols="12" class="d-flex flex-column align-items-center justify-content-center">
				<v-btn class="white--text lucky-number" x-large color="#da5a33" fab>{{ lucky_number[0].number }}</v-btn>
				<div class="mt-5" v-html="lucky_number[0].description"></div>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url.js'

	export default{
		data(){
			return{
				lucky_number: [],
				active: false
			}
		},
		
		methods:{
			getUrl: src => url(src),
			async getData(){
				this.$store.commit('loading', true);
				await axios.get(`/api/lucky_number/get_one/1`).then(res => {
					this.lucky_number.push(res.data);
					this.active = this.lucky_number[0].active;
					this.$emit('blockDataEmit', this.lucky_number);
					this.$store.commit('loading', false);
				});
			},
		},
		
		created(){
			this.getData();
		},
		
	}
</script>

<style>
	.lucky-number {
		font-size: 1.7rem!important;
		font-weight: 400!important;
	}
</style>