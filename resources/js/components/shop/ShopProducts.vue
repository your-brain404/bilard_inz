<template>
	<v-row>
		<v-col v-for="(product, i) in shop_products" :key="i" cols="4" v-if="getItem(product.id) != undefined">
			<router-link :to="`/sklep/produkt/${product.id}/${slug(product.title)}`">
				<v-card class="mx-auto" max-width="400" >
					<v-img class="white--text align-end" height="200px" :src="getUrl(product.photo)" >
						<v-card-title>{{ product.title }}</v-card-title>
					</v-img>

					<v-card-subtitle class="pb-0"> {{ product.subtitle }} </v-card-subtitle>

					<v-card-text class="text--primary">
						Cena: {{ getItem(product.id).price.toFixed(2) }} PLN
					</v-card-text>

					<v-card-actions>
						<v-btn color="primary" text >
							<v-icon left>mdi-cart-plus</v-icon>
							<span>Dodaj do koszyka</span> 
						</v-btn>
					</v-card-actions>
				</v-card>
			</router-link>
		</v-col>
	</v-row>
</template>

<script>
	import axios from 'axios'
	import url from '../../helpers/photo/url'
	import slugify from '../../helpers/links/slug'

	export default {
		props:['deleteFlag'],
		data() {
			return {
				shop_category: {},
				shop_products: [],
				shop_items: [],
			}
		},
		methods: {
			getUrl: src => url(src),
			slug: title => slugify(title),
			getItem(product_id) {
				return this.shop_items.find(item => item == undefined ? false : item.product_id == product_id);
			},
			getItems() {
				for(let product of this.shop_products) {

					axios.get(`/api/shop_items/get_where?default=1&product_id=${product.id}`).then(res => {
						this.shop_items.push(res.data[0]);
					}).catch(err => {
						this.$store.commit('setSnackbar', 'Nie udało się załadować domyślnych wariantów, przepraszamy...')
					})
				}
			},
			getProducts(){
				this.$store.commit('loading', true);
				let endpoint = `get_where?category_id=${this.$route.params.parent_id}`;
				if(this.$route.path == '/sklep') endpoint = `get_where?active=1`;
				axios.get(`/api/shop_products/${endpoint}`).then(res => {
					this.$store.commit('loading', false);
					this.shop_products = res.data;
					this.getItems();
					this.$emit('blockDataEmit', this.shop_products);
					
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
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
			}
		},
	}
</script>