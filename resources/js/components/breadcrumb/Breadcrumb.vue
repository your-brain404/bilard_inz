<template>
	<div class="breadcrumb-container">
		<router-link class="white--text breadcrumb-link" to="/">
			<h3 class="breadcrumb-item ml-0">{{ home }}</h3> 
		</router-link>
		> 
		<router-link class="white--text breadcrumb-link" :to="link">
			<h3 class="breadcrumb-item">{{ category }} </h3>
		</router-link> 
		> 
		<h3 class="breadcrumb-item font-weight-bold">{{ title }}</h3>
	</div>
</template>

<script>
	import axios from 'axios'

	export default {
		props: ['category', 'title', 'link'],
		data() {
			return {
				home: ''
			}
		},
		created() {
			axios.get('/api/breadcrumb_descriptions/get_one/1').then(res => this.home = res.data.title);
		}
	}
</script>