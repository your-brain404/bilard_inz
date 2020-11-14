<template>
	<v-container fluid class="py-12">
		<v-row>
			<v-col cols="12" md="3">
				<ShopCategories />
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'
	import ShopCategories from '../shop/ShopCategories'

	export default {
		components: {
			ShopCategories
		}
	}
</script>