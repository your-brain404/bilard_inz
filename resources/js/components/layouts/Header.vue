<template>
	<v-card flat class="overflow-hidden">
		<Drawer :openLogin="openLogin" :drawer="drawer" @closeDrawer="drawer = false" />
		<v-app-bar color="#6A76AB" dark shrink-on-scroll prominent :src="banner" fade-img-on-scroll scroll-target="#scrolling-techniques-3" extension-height="120px">
			<template v-slot:img="{ props }">
				<v-img v-bind="props" gradient="to right top, rgb(16 16 16 / 70%), rgb(45 103 63 / 70%)"></v-img>
			</template>

			<v-app-bar-nav-icon style="left: 100%; transform: translateX(-70%);position: absolute;" @click="drawer = true"></v-app-bar-nav-icon>



			<v-toolbar-title class="toolbar-title pb-0 d-flex justify-content-center flex-column align-items-center font-weight-bold first-color pl-0" tag="router-link" to="/">
				{{ $store.getters.settings.company }}</v-toolbar-title>

				<v-spacer></v-spacer>


				<template v-slot:extension>
					<v-tabs color="#da5a33" v-model="currentPage" >
						<v-tab v-if="page.page != '/koszyk' && page.active" active-class="tab-active" v-for="(page, i) in subpages" @click.prevent="redirect(page.page)" :key="i" :href="page.page" class="d-flex align-items-center header-tab" >{{ page.title }}</v-tab>
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
			props: ['openLogin'],
			data(){
				return{
					currentPage: '/' + this.$route.path.split('/')[1],
					register: false,
					drawer: false,
					url
				}
			},
			methods:{
				redirect(path){
					return this.$route.path != path ? this.$router.push(path) : true;
				},
			},
			created() {
				this.$store.dispatch('fetchSubpages');
				this.$store.dispatch('validationRules');
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
							return url(page.photo);
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
			margin-left: 56px;
		}
		.tab-active{
			color: #da5a33!important;
			font-weight: bold!important;
		}
		.v-toolbar__content {
			padding-bottom: 0!important;
		}

		.v-application--is-ltr .v-tabs--align-with-title>.v-tabs-bar:not(.v-tabs-bar--show-arrows)>.v-slide-group__wrapper>.v-tabs-bar__content>.v-tab:first-child, .v-application--is-ltr .v-tabs--align-with-title>.v-tabs-bar:not(.v-tabs-bar--show-arrows)>.v-slide-group__wrapper>.v-tabs-bar__content>.v-tabs-slider-wrapper+.v-tab {
			margin-left: unset;
		}
	</style>