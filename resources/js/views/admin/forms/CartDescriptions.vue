<template>
	<v-content class="">
		<v-container>
			<v-card>
				<v-card-title class="justify-content-center">
					<h2 class=" pt-4 font-weight-bold panel-title-header first-color"> 
						Koszyk opisy {{ formTitle }}
					</h2>
				</v-card-title>
				<v-divider class="mt-0"></v-divider>
				<v-form ref="form" v-model="valid" lazy-validation>
					<v-row>
						
						<v-col class="" cols="12" lg="6">
							<div class="pa-5">
								<v-text-field color="primary"  v-model="currentObject.title" :rules="rules.titleRules" label="Tytuł *" required></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.cart_icon" label="Ikona koszyka (rozsuwane menu)"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.empty" label="Twój koszyk jest pusty! Odwiedź zakładkę Sklep!"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.delete" label="Ikona usuwania produktu z koszyka"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.delivery" label="+ przesyłka"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.sum" label="Razem: "></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.go_to_cart" label="Przejdź do koszyka!"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.step_1" label="Koszyk (krok 1 tytuł)"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.step_2" label="Dane kupującego (krok 2 tytuł)"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.step_3" label="Dostawa i Płatność (krok 3 tytuł)"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.step_4" label="Podsumowanie (krok 4 tytuł)"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.next" label="Dalej"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.back" label="Wróć"></v-text-field>
								<v-text-field  color="primary" v-model="currentObject.realize" label="Zrealizuj zamówienie"></v-text-field>
								
							</div>
						</v-col>

						

						<v-col cols="12" lg="6" >
							<v-text-field  color="primary" v-model="currentObject.delivery_type" label="Wybierz rodzaj dostawy"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.payment_type" label="Wybierz rodzaj płatności"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.traditional" label="Przelew tradycyjny"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.personal" label="Przy odbiorze"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.name" label="Imię i nazwisko *"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.email" label="E-mail *"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.phone" label="Telefon *"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.street" label="Ulica *"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.house_number" label="Numer Domu *"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.flat_number" label="Numer Mieszkania"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.zip_code" label="Kod Pocztowy *"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.city" label="Miasto *"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.message" label="Uwagi do zamówienia"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.other_address" label="Dostawa na inny adres?"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.yes" label="Tak"></v-text-field>
							<v-text-field  color="primary" v-model="currentObject.no" label="Nie"></v-text-field>
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
					title: '',
					cart_icon: '',
					phone: '',
					email: '',
					name: '',
					message: '',
					street: '',
					empty: '',
					back: '',
					next: '',
					city: '',
					zip_code: '',
					step_1: '',
					step_2: '',
					step_3: '',
					step_4: '',
					flat_number: '',
					house_number: '',
					other_address: '',
					yes: '',
					no: '',
					traditional: '',
					personal: '',
					delivery_type: '',
					payment_type: '',
					realize: '',
					go_to_cart: '',
					sum: '',
					delivery: '',
				},
			}
		},
		...vueComponents,
	}
</script>