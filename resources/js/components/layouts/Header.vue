<template>
	<v-card class="overflow-hidden">
		<Drawer :drawer="drawer" @closeDrawer="drawer = false" />
		<v-app-bar color="#6A76AB" dark shrink-on-scroll prominent :src="banner" fade-img-on-scroll scroll-target="#scrolling-techniques-3" extension-height="100px">
			<template v-slot:img="{ props }">
				<v-img v-bind="props" gradient="to top right, rgba(100,115,201,.7), rgba(25,32,72,.7)"></v-img>
			</template>

			<v-app-bar-nav-icon @click="drawer = true"></v-app-bar-nav-icon>

			<v-toolbar-title class="toolbar-title font-weight-bold first-color pl-0" tag="router-link" to="/">{{ $store.getters.settings.company }}</v-toolbar-title>

			<v-spacer></v-spacer>
			

			<template v-slot:extension>
				<v-tabs color="#da5a33" v-model="currentPage" align-with-title>
					<v-tab v-if="page.page != '/koszyk'" active-class="tab-active" v-for="(page, i) in subpages" @click.prevent="redirect(page.page)" :key="i" :href="page.page" class="d-flex align-items-center header-tab" >{{ page.title }}</v-tab>
				</v-tabs>
			</template>
		</v-app-bar>
		<v-sheet id="scrolling-techniques-3" class="overflow-y-auto"></v-sheet>
	</v-card>
</template>

<script>
	
	import url from '../../helpers/photo/url.js'
	import Drawer from '@/components/layouts/Drawer'

	export default{
		data(){
			return{
				currentPage: '/' + this.$route.path.split('/')[1],
				register: false,
				drawer: false,
			}
		},
		methods:{
			redirect(path){
				return this.$route.path != path ? this.$router.push(path) : true;
			},
			getUrl: src => url(src),
		},
		created() {
			this.$store.dispatch('fetchSubpages')
			this.$store.dispatch('fetchAllUsers');
		},
		components:{
			Drawer
		},
		computed:{
			subpages() {
				return this.$store.getters.subpages;
			},
			banner() {
				for(let page of this.subpages) {
					if(page.page.includes(this.$route.path.split('/')[1])) {
						return this.getUrl(page.photo);
					}
				}
			},
		},
		watch: {
			'$route.path'() {
				this.currentPage = '/' + this.$route.path.split('/')[1];
			},
			
		}



	}
</script>

<style>
	.header-tab:hover{
		text-decoration: none;
	}
	.header-tab{
		color: white!important;
	}
	.toolbar-title{
		white-space: inherit!important;
		overflow: inherit!important;
		font-size: 2.5rem!important;
		text-shadow: 0 0 8px black;
	}
	.tab-active{
		color: #da5a33!important;
		font-weight: bold!important;
	}
</style>