<template>
	<v-list dense>
		<h3 class="shop-categories-title">Kategorie Produktów</h3>
		<v-list-item-group color="primary" >
			<router-link to="/sklep">
				<v-list-item  class="shop-category">
					<v-list-item-content>
						<v-list-item-title class="shop-category-title" v-text="`Zobacz wszystkie produkty`"></v-list-item-title>
					</v-list-item-content>
				</v-list-item>
			</router-link>
			<router-link :to="`/sklep/${category.id}/1`" v-for="(category, i) in shop_categories" :key="i">
				<v-list-item  class="shop-category">
					<v-list-item-content>
						<v-list-item-title class="shop-category-title" v-text="category.title"></v-list-item-title>
					</v-list-item-content>
				</v-list-item>
			</router-link>
		</v-list-item-group>
	</v-list>
</template>
<script>
	import axios from 'axios'
	
	export default {
		props:['deleteFlag'],
		data() {
			return {
				shop_categories: []
			}
		},
		methods: {
			slug: title => slugify(title),
			getCategories(){
				this.$store.commit('loading', true);
				let endpoint = `get_all`;
				if(this.$route.path == '/sklep') endpoint = `get_where?active=1`;

				axios.get(`/api/shop_categories/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.shop_categories = res.data;
					this.$emit('blockDataEmit', this.shop_categories);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getCategories();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getCategories();
				}
			}
		},
	}
</script>

<style>
	.shop-categories-title {
		font-weight: 600;
		margin-bottom: 1.3rem;
		font-size: 1.9rem;
	}
	.shop-category {
		border-left: 3px solid lightgrey;
	}
	.shop-category:hover {
		border-color: var(--first-color);
	}
	.shop-category:hover .shop-category-title {
		color: var(--first-color)!important;
	}
	.shop-category-title {
		font-size: 1.2rem!important;
	}
</style>