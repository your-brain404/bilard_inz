<template>
	<v-container class="py-12 price-list">
		<v-row justify="center">
			<h2 class="about-title font-weight-bold text-center first-color my-0 mb-5">Cennik</h2>
		</v-row>
		<v-row justify="center">
			<v-col  v-for="(category, i) in price_list_categories" :key="i" cols="12" lg="4">
				<v-simple-table >
					<template v-slot:default>
						<thead>
							<tr>
								<th class="text-left">
									{{ category.title }}
								</th>
								<th class="text-right"></th>
							</tr>
						</thead>
						<tbody>
							<tr v-for="(price, j) in price_list" v-if="price.price_list_category_id == category.id" :key="j">
								<td>{{ `${price.title} (${price.subtitle})` }}</td>
								<td class="text-right">{{ price.price + ' zł'}}</td>
							</tr>
						</tbody>
					</template>
				</v-simple-table>
			</v-col>
		</v-row>
	</v-container>
</template>

<script>
	import axios from 'axios'

	export default {
		props:['deleteFlag', 'activeFlag'],
		data() {
			return {
				price_list: [],
				price_list_categories: []
			}
		},
		methods: {
			getPriceList() {
				this.$store.commit('loading', true);
				axios.get(`/api/price_list/get_all`).then(res => {
					this.$store.commit('loading', false);
					this.price_list = res.data.filter(price => price.active);
					if(this.$route.path.split('/')[1] == 'admin-panel') this.$emit('blockDataEmit', res.data.filter(price => price.price_list_category_id == this.$route.params.parent_id
					))
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getPriceListCategories() {
				this.$store.commit('loading', true);
				axios.get(`/api/price_list_categories/get_where?active=1`).then(res => {
					this.$store.commit('loading', false);
					this.price_list_categories = res.data;
					if(this.$route.path.split('/')[1] == 'admin-panel') this.$emit('parent_data', this.price_list_categories.find(cat => cat.id == this.$route.params.parent_id))
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			}
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getPriceList();
					this.getPriceListCategories();
				}
			},
			activeFlag() {
				if(this.activeFlag){
					this.getPriceList();
					this.getPriceListCategories();
				}
			}
		},
		created() {
			this.getPriceListCategories();
			this.getPriceList();
		}
	}
</script>