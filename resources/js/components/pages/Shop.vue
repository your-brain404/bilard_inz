<template>
	<v-container fluid class="py-12">
		<v-row>
			<v-col cols="12" md="3">
				<ShopCategories />
			</v-col>
			<v-col cols="12" md="9">
				<ShopProducts />
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import ShopCategories from '../shop/ShopCategories'
	import ShopProducts from '../shop/ShopProducts'

	export default {
		components: {
			ShopCategories, ShopProducts
		}
	}
</script>