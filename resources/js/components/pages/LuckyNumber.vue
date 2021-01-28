<template>
	<v-container v-if="active" class="py-12 history">
		<v-row justify="center">
			<v-col>
				<h2 class="about-title font-weight-bold text-center first-color my-0 mb-0">{{ luckyNumber[0].title }}</h2>
				<h3 class="first-color text-center ">{{ luckyNumber[0].subtitle }}</h3>

			</v-col>
		</v-row>
		<v-row  :key="i" class="mb-0">
			<v-col cols="12" class="d-flex flex-column align-items-center justify-content-center">
				<v-btn class="white--text lucky-number" x-large color="#da5a33" fab>{{ luckyNumber[0].number }}</v-btn>
				<div class="mt-5" v-html="luckyNumber[0].description"></div>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'

	export default{
		data(){
			return{
				luckyNumber: [],
				active: false
			}
		},
		
		methods:{
			async getData(){
				this.$store.commit('loading', true);
				await axios.get(`/api/lucky_number/get_one/1`).then(res => {
					this.luckyNumber.push(res.data);
					this.active = this.luckyNumber[0].active;
					this.$emit('showLuckyNumber', this.active);
					this.$emit('blockDataEmit', this.luckyNumber);
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