<template>
	<div>
		<v-row justify="end">
			<v-col cols="12" class="justify-content-end d-flex">
				<v-chip @click="setSort(sort)" v-if="sort.show" class="ml-1" v-for="(sort, i) in sorts" :key="i" >
					<v-icon class="pr-1">{{ sort.icon }}</v-icon>
					{{ sort.title }}
				</v-chip>
			</v-col>
		</v-row>
		<v-row>
			<v-col cols="12">
				<Pagination :length="pagination.last_page" @page="setPath"/>
			</v-col>
		</v-row>
		<v-row>

			<v-col v-for="(product, i) in shop_products" :key="i" cols="4">
				<v-card class="mx-auto" max-width="400" >
					<router-link :to="`/sklep/produkt/${product.id}/${slug(product.title)}`">
						<v-img class="white--text align-end" height="200px" :src="getUrl(product.photo)" >
							<v-card-title>{{ product.title }}</v-card-title>
						</v-img>

						<v-card-subtitle class="pb-0"> {{ product.subtitle }} </v-card-subtitle>

						<v-card-text class="text--primary">
							Cena: {{ product.price.toFixed(2) }} PLN
						</v-card-text>
					</router-link>
					<v-card-actions>
						<v-btn color="primary" text >
							<v-icon left>mdi-cart-plus</v-icon>
							<span>Dodaj do koszyka</span> 
						</v-btn>
					</v-card-actions>
				</v-card>

			</v-col>
		</v-row>
		<v-row>
			<v-col cols="12">
				<Pagination :length="pagination.last_page" @page="setPath"/>
			</v-col>
		</v-row>
	</div>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url'
	import slugify from '../../helpers/links/slug'
	import Pagination from '../pagination/Pagination'

	export default {
		props:['deleteFlag'],
		data() {
			return {
				shop_category: {},
				shop_products: [],
				pagination: {},
				sorts: [
				{title: 'Cena', show: true, field: 'price', icon: 'mdi-sort-numeric-ascending', sort: 'asc'},
				{title: 'Cena', show: false, field: 'price', icon: 'mdi-sort-numeric-descending', sort: 'desc'},
				{title: 'Tytuł', show: true, field: 'title', icon: 'mdi-sort-alphabetical-ascending', sort: 'asc'},
				{title: 'Tytuł', show: false, field: 'title', icon: 'mdi-sort-alphabetical-descending', sort: 'desc'},
				{title: 'Data', show: false, field: 'created_at', icon: 'mdi-arrow-up', sort: 'asc'},
				{title: 'Data', show: true, field: 'created_at', icon: 'mdi-arrow-down', sort: 'desc'},
				],
				currentSort: {title: 'Data', show: true, field: 'created_at', icon: 'mdi-arrow-down', sort: 'desc'},
			}
		},
		methods: {
			setPath(event) {
				if(this.$route.params.page != event) this.$router.push({name: 'ShopPagination', params: {page: event}});
			},
			getUrl: src => url(src),
			slug: title => slugify(title),
			getProducts(){
				this.$store.commit('loading', true);
				let endpoint = `get_where?`;
				if(this.$route.params.parent_id) endpoint += `category_id=${this.$route.params.parent_id}`;
				if(this.$route.params.category_id) endpoint += `&category_id=${this.$route.params.category_id}`;
				if(this.$route.path == '/sklep') endpoint = `get_where?active=1`;
				endpoint += `&field=${this.currentSort.field}&sort=${this.currentSort.sort}`;
				if(this.$route.params.page) endpoint += `&page=${this.$route.params.page}`;

				axios.get(`/api/shop_products/${endpoint}`).then(res => {
					res = res.data;
					this.pagination = res.meta;
					this.$store.commit('loading', false);
					this.shop_products = res.data;
					this.$emit('blockDataEmit', this.shop_products);
					
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			setSort(sort) {
				this.currentSort = this.sorts.find(obj => obj.title == sort.title && !obj.show);
				this.currentSort.show = true;
				sort.show = false;
				this.getProducts();
			},
			getCategory() {
				let endpoint = 'get_all';
				if(this.$route.params.parent_id) endpoint = `get_one/${this.$route.params.parent_id}`;
				axios.get(`/api/shop_categories/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.shop_category = res.data;
					this.$emit('parent_data', this.shop_category);
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			
		},
		created() {
			this.getProducts();
			this.getCategory();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getProducts();
					this.getCategory();
				}
			},
			'$route'() {
				this.getProducts();
			}
		},
		components: {
			Pagination
		}
	}
</script>