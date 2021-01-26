<template>
	<v-container class="py-12 history">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ documentsDescriptions.title }}</h2>
		</v-row>
		<v-row v-for="(doc, i) in documents" :key="i" class="mb-0">
			<v-col cols="12" class="d-flex flex-column justify-content-center pb-0">
				<a download :href="url(doc.file)">
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
		props: ['deleteFlag'],
		watch: {
			deleteFlag() {
				if(this.deleteFlag) this.getData();
			}
		},
		data(){
			return{
				documents: [],
				documentsDescriptions: {},
				url
			}
		},
		
		methods:{
			async getDocumentsDescriptions() {
				await axios.get('/api/documents_descriptions/get_one/1').then(res => this.documentsDescriptions = res.data);
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