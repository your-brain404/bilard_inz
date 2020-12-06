<template>
	<v-container class="py-12 history">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Szczęśliwy los</h2>
		</v-row>
		<v-row  :key="i" class="mb-0">
			<v-col cols="12" class="d-flex flex-column justify-content-center">
				<v-btn color="#da5a33" outlined class="w-100">{{ lucky_number.number }}</v-btn>
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
				lucky_number: {},
			}
		},
		
		methods:{
			getUrl: src => url(src),
			getData(){
				let endpoint = `get_one/1`;
				if(this.$route.path == '/') endpoint = 'get_where?active=1';

				this.$store.commit('loading', true);
				axios.get(`/api/lucky_number/${endpoint}`).then(res => {
					this.lucky_number = res.data;
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