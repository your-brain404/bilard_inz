<template>
	<v-container class="">
		<v-row class="justify-content-center">
			<h2 class="about-title font-weight-bold text-center first-color">A co w ofercie?</h2>
		</v-row>
		<v-row>
			<v-col v-for="(offer, i) in offers" :key="i" cols="12" sm="6" md="4">
				<v-card class="mx-auto" max-width="400" >
					<v-img class="white--text align-end" height="200px" :src="offer.photo">
						<v-card-title>{{ offer.title }}</v-card-title>
					</v-img>
					<v-card-subtitle class="pb-2">{{ offer.subtitle }}</v-card-subtitle>
					<v-card-text class="text--primary">
						<div>{{ offer.description }}</div>
					</v-card-text>
				</v-card>
			</v-col>
			<v-btn class="my-5"  link x-large block color="#da5a33" outlined>CZYTAJ WIĘCEJ</v-btn>
		</v-row>
	</v-container>
</template>

<script>
	export default{
		data(){
			return{
				offers: [
				{title: 'Bilard', subtitle: 'Wysoka jakość stołów bilardowych', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.', photo: '../storage/img/offers/bilard.jpg'},
				{title: 'Tenis Stołowy', subtitle: 'Stół do gry amatorskiej jak i profesjonalnej', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.', photo: '../storage/img/offers/ping_pong.jpg'},
				{title: 'Darty', subtitle: 'Maszyna do gry w rzutki', description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor aut modi exercitationem voluptatum mollitia quaerat! Nisi dolorum vero repellendus veniam laudantium eaque unde, deleniti recusandae doloribus modi, iusto totam. Fugiat.', photo: '../storage/img/offers/rzutki.jpg'},
				]
			}
		},
		created(){
			this.$emit('blockDataEmit', this.offers);
		}
	}
</script>