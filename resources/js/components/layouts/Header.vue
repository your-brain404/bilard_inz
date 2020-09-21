<template>
	<v-card class="overflow-hidden">
		<v-app-bar
		
		color="#6A76AB"
		dark
		shrink-on-scroll
		prominent
		:src="navbarPhotoSrc"
		fade-img-on-scroll
		scroll-target="#scrolling-techniques-3"
		extension-height="100px"
		>
		<template v-slot:img="{ props }">
			<v-img
			v-bind="props"
			gradient="to top right, rgba(100,115,201,.7), rgba(25,32,72,.7)"
			></v-img>
		</template>

		<v-app-bar-nav-icon></v-app-bar-nav-icon>

		<v-toolbar-title class="toolbar-title font-weight-bold first-color" tag="router-link" to="/">Bilard Centrum Lubin</v-toolbar-title>

		<v-spacer></v-spacer>
		<div class="d-flex align-items-center">
			<v-btn outlined @click="$router.push('/admin-panel')" >
				<span>Admin Panel</span>
				<v-icon>mdi-account</v-icon>
			</v-btn>

			<v-btn icon>
				<v-icon>mdi-magnify</v-icon>
			</v-btn>

			<Login  @openRegister="register = true"  />
			<Register :dialog="register" @closeRegister="register = false"/>
		</div>

		<template v-slot:extension>
			<v-tabs color="#da5a33" v-model="currentPage" align-with-title>
				<v-tab active-class="tab-active" @click.prevent="redirect(page.path)" v-for="(page, i) in pages" :key="i" :href="`${page.path}`" class="d-flex align-items-center header-tab" >{{ page.name }}</v-tab>
			</v-tabs>
		</template>
	</v-app-bar>
	<v-sheet
	id="scrolling-techniques-3"
	class="overflow-y-auto"

	>

</v-sheet>
</v-card>
</template>

<script>
	import Register from '../auth/Register'
	import Login from '../auth/Login'

	export default{
		data(){
			return{
				pages:[
				{path: '/', name: 'Home'},
				{path: '/news', name: 'Aktualności'},
				],
				currentPage: 'news',
				navbarPhotoSrc: '../storage/img/toolbar/8-ball.jpg',
				register: false
				
			}
		},
		methods:{
			redirect(path){
				return this.$route.path != path ? this.$router.push(path) : true;
			}
		},
		components:{
			Register, Login
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