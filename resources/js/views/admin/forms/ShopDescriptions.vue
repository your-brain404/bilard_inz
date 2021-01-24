<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Sklep opisy {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						<v-col class="" lg="6" cols="12">
							<div class="pa-5">
								<v-text-field color="primary" :rules="rules.titleRules" v-model="currentObject.title" label="Tytuł *"></v-text-field>
								<v-text-field color="primary"  v-model="currentObject.category" label="Kategoria: "></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.price" label="Cena:"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.currency" label="Waluta"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.discount" label="Rabat"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.color" label="Kolor:"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.amount" label="Ilość"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.plus_icon" label="Ikona dodawania do koszyka"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.minus_icon" label="Ikona odejmowania z koszyka"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.max_amount" label="Przykro nam, brak towaru w magazynie!"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.add_to_cart" label="Dodaj do koszyka"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.add_to_cart_icon" label="Dodaj do koszyka (ikona)"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.buy_now" label="Przejdź do koszyka!"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.buy_now_icon" label="Przejdź do koszyka! (ikona)"></v-text-field>

								<v-text-field  color="primary" v-model="currentObject.order_confirm" label="Czy na pewno złożyć zamówienie?"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.product_deleted" label="Przykro nam, produkt {produkt} został usunięty"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.product_amount" label="Przykro nam, zostały {ilosc} sztuki produktu {produkt}"></v-text-field>
							</div>
						</v-col>

						<v-col class="" lg="6" cols="12">
							<div class="pa-5">
								<v-text-field color="primary"  v-model="currentObject.product_categories" label="Kategorie Produktów"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.all" label="Wszystkie"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.price_sort_up" label="Ikona sortowania po cenie rosnąco"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.price_sort_down" label="Ikona sortowania po cenie malejąco"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.title_sort_up" label="Ikona sortowania po tytule rosnąco"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.title_sort_down" label="Ikona sortowania po tytule malejąco"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.date_sort_up" label="Ikona sortowania po dacie rosnąco"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.date_sort_down" label="Ikona sortowania po dacie malejąco"></v-text-field>
							</div>
						</v-col>
					</v-row>
					<v-divider class="mb-0"></v-divider>
					<v-card-actions class="pa-4">
						<v-btn :disabled=" !valid || currentObject.title == '' " color="success" class="mr-2" @click="validate" >
							<v-icon left>mdi-check</v-icon>
							<span>Zatwierdź</span>
						</v-btn>

						<v-btn color="error" class="mr-2" @click="$router.go(-1)" >
							<v-icon left>mdi-close</v-icon>
							<span>Anuluj</span>
						</v-btn>
					</v-card-actions>
				</v-form>
			</v-card>
			
		</v-container>
	</v-content>
</template>

<script>
	import FormService from '../../../services/FormService.js'
	let data = {};
	let vueComponents = {};
	
	Object.entries(FormService).forEach(form => form[0] != 'data' ? vueComponents[form[0]] = form[1] : data = form[1] )
	
	export default {
		data() {
			return {
				...data,
				currentObject:{
					show: '',
					hide: '',
					send: '',
					delete: '',
					button_icon: '',
					write: '',
					question: '',
				},
			}
		},
		...vueComponents
	}
</script>