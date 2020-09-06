<template>
	<v-content class="">
		<v-container :id="block.tablename" v-for="(block, i) in blocks" :key="i" class="pa-5">
			<v-card raised class="">
				<h2 class="text-center pt-4 font-weight-bold panel-title-header first-color">{{ block.title }}</h2>
				<v-divider></v-divider>
				<component :is="block.component" :deleteFlag="deleteFlag" @blockDataEmit="block.table = $event" class="panel-slider mb-5"></component>
				<v-card shaped class="">
					<v-card-title class="align-items-center pt-5">
						<h2 class="table-title first-color ma-0">Akcje</h2>
						<v-spacer></v-spacer>
						<v-text-field class="ma-0 pt-0" v-model="search" append-icon="mdi-magnify" label="Szukaj..." single-line hide-details ></v-text-field>
						<router-link v-if="block.multiple" class="form-link" :to="`/admin-panel/${block.tablename}/form`">
							<v-btn class="first-bgc white--text ml-5">
								<v-icon left class="">mdi-plus</v-icon>
								<span>Dodaj</span>
							</v-btn>
						</router-link>
					</v-card-title>
					<v-data-table :headers="headers" :items="block.table" :search="search"
					:items-per-page="5"
					:footer-props="{
					'items-per-page-options': [5,10,15]
				}"
				class="elevation-1"
				@page-count="pageCount = $event" >
				<template v-slot:item.actions="{ item }">
					<div class="d-flex justify-content-end">
						<router-link class="form-link" :to="`/admin-panel/${block.tablename}/form/${item.id}`">
							<v-btn small color="warning" class="white--text mr-2">
								<v-icon left class="">mdi-pencil</v-icon>
								<span>Edytuj</span>
							</v-btn>
						</router-link>
						<v-btn v-if="block.multiple" @click="deleteItem(block, item)" small color="error" class="white--text">
							<v-icon left class="">mdi-close</v-icon>
							<span>Usuń</span>
						</v-btn>
					</div>
				</template>
				<template v-slot:footer="props">
					<div style="display: none!important;">
						{{ props.props.itemsPerPageText = 'Pokazuj na stronie:' }}
					</div>
				</template>

			</v-data-table>
		</v-card>

	</v-card>
</v-container>
</v-content>

</template>

<script>
	import Slider from '../../components/pages/Slider'
	import AboutUs from '../../components/pages/AboutUs'
	import Offers from '../../components/pages/Offers'
	import axios from 'axios';

	export default{
		data () {
			return {
				search: '',
				blocks: [
				{title: 'Slider', component: Slider, tablename: 'slider', table: [], multiple:true},
				{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple:false},
				{title: 'Oferta', component: Offers, tablename: 'offers',table: [], multiple:true},
				],
				headers: [
				{
					text: 'Tytuł',
					align: 'start',
					value: 'title',
				},
				{ text: '', value: 'actions' },
				],
				deleteFlag: false
			}
		},
		methods:{
			deleteItem(block, item){
				if(confirm(`Na pewno chcesz usunąć trwale przedmiot "${item.title}" z tabeli "${block.title}"? `)){
					axios.delete(`/api/${block.tablename}/delete/${item.id}`).then(res => {
						this.deleteFlag = true;
						setTimeout(()=>{this.deleteFlag = false}, 200);
					}).catch(err => {
						console.log(err);
					})
				}
			}
		}
	}
</script>

<style>
	.panel-slider{
		padding: 0px 80px;
	}
	.panel-title-header{
		font-size: 3rem;
	}
	.form-link{
		text-decoration: none!important;
	}
</style>