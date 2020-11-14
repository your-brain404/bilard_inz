<template>
	<v-select v-model="color" :rules="rules.titleRules" :items="searchColor()" return-object :item-text="itemText" label="Wybierz kolor">
		<template v-slot:prepend-item>
			<v-list-item>
				<v-text-field v-model="search" @keyup="searchColor" label="Znajdź"></v-text-field>
			</v-list-item>

			<v-divider class="mt-2"></v-divider>

		</template>

		<template #selection="{ item }">
			{{item.title}}
		</template>
	</v-select>
</template>

<script>
	import axios from 'axios'

	export default {
		props: ['selectedColor', 'rules'],
		data() {
			return {
				colors: [],
				color: '',
				search: '',
			}
		},

		watch: {
			color() {
				this.$emit('color', this.color);
			},
			search() {
				this.search = this.search == undefined ?  '' : this.search;
			},
		},
		methods: {
			itemText: item => item.title,
			async getColors() {
				await axios.get('/api/shop_item_colors/get_where?active=1').then(res => {
					this.colors = res.data;
					if(this.selectedColor != 0) this.color = this.colors.find(color => this.selectedColor == color.id); 
				}).catch(err => {
					this.$store.commit('setSnackbar', 'Nie udało się załadować kolorów...');
				})
			},
			searchColor() {
				let filteredcolors = [];
				for(let color of this.colors) 
					color.title.toLowerCase().includes(this.search.toLowerCase()) ? filteredcolors.push(color) : true;

				return filteredcolors;
			}
		},
		created() {
			this.getColors();
		}
	}
</script>