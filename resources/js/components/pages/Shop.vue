<template>
	<v-container fluid class="py-12">
		<v-row justify="center">
			<v-col cols="12">
				<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">{{ shop_descriptions.title }}</h2>
				<h3 v-if="category" class="first-color text-center ">{{ shop_descriptions.category }} '{{ category.title }}'</h3>
			</v-col>
		</v-row>
		<v-row>
			<v-col cols="12" md="3">
				<ShopCategories :shop_descriptions="shop_descriptions" @category="category = $event" />
			</v-col>
			<v-col cols="12" md="9">
				<component :shop_descriptions="shop_descriptions" :is="getComponent"></component>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import ShopCategories from '../shop/ShopCategories'
	import ShopProducts from '../shop/ShopProducts'
	import SingleProduct from './SingleProduct'

	export default {
		data() {
			return {
				category: {},
				shop_descriptions: {}
			}
		},
		computed: {
			getComponent() {
				return this.$route.params.id ? SingleProduct : ShopProducts;
			}
		},
		components: {
			ShopCategories, ShopProducts, SingleProduct
		},
		methods: {
			getShopDescriptions() {
				axios.get('/api/shop_descriptions/get_one/1').then(res => this.shop_descriptions = res.data);
			},
		},
		created() {
			this.getShopDescriptions();
		}
	}
</script>