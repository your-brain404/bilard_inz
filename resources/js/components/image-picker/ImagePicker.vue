<template>
	<v-row justify="center">
		<v-dialog scrollable v-model="dialog" persistent>
			<template v-slot:activator="{ on, attrs }">
				<v-btn color="primary" dark v-bind="attrs" v-on="on" class="w-100">
					Dodaj zdjęcie
				</v-btn>
			</template>
			<v-card>
				<v-card-title class="d-flex justify-content-between">
					<div>Dodaj zdjęcia</div>
					<v-icon @click="dialog = false">mdi-close</v-icon>
			</v-card-title>
				<v-tabs v-model="tab" background-color="primary" dark>
					<v-tab v-for="item in items" :key="item.tab">
						{{ item.tab }}
					</v-tab>
				</v-tabs>

				<v-tabs-items v-model="tab">
					<v-tab-item >
						<v-card flat>
							<v-card-text>
								<v-container>
									<v-row class="">
										<v-col lg="2" md="3" sm="4" v-for="photo in items[0].content" :key="photo.id">
											<v-img :src="`../${photo.path}`"></v-img>
										</v-col>
									</v-row>
								</v-container>
							</v-card-text>
						</v-card>
					</v-tab-item>
					<v-tab-item >
						<v-card flat>
							<v-card-text></v-card-text>
						</v-card>
					</v-tab-item>
				</v-tabs-items>
			</v-card>
		</v-dialog>
	</v-row>
</template>

<script>
	import axios from 'axios';

	export default {
		data () {
			return {
				dialog: false,
				tab: null,
				items: [
				{ tab: 'Wybierz zdjęcie', content: [] },
				{ tab: 'Dodaj Nowe Zdjęcie', content: [] },

				],
			}
		},
		created(){
			axios.get('/api/media/get_photos').then(res => this.items[0].content = res.data);
		}
	}
</script>