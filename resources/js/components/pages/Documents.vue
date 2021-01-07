<template>
	<v-container class="py-12 history">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ documents_descriptions.title }}</h2>
		</v-row>
		<v-row v-for="(doc, i) in documents" :key="i" class="mb-0">
			<v-col cols="12" class="d-flex flex-column justify-content-center">
				<a target="_blank" :href="getUrl(doc.file)">
					<v-btn color="#da5a33" outlined class="w-100">{{ doc.title }}</v-btn>
				</a>
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
				documents: [],
				documents_descriptions: {}
			}
		},
		
		methods:{
			async getDocumentsDescriptions() {
				await axios.get('/api/documents_descriptions/get_one/1').then(res => this.documents_descriptions = res.data);
			},
			getUrl(src){
				return url(src);
			},
			async getData(){
				let endpoint = `get_all`;
				if(this.$route.path == '/dokumenty') endpoint = 'get_where?active=1';

				this.$store.commit('loading', true);
				await axios.get(`/api/documents/${endpoint}`).then(res => {
					if(res.data.length > 0) this.documents = res.data;
					this.$emit('blockDataEmit', this.documents);
					this.$store.commit('loading', false);
				});
			},
		},
		
		created(){
			this.getData();
			this.getDocumentsDescriptions();
		},
		
	}
</script>