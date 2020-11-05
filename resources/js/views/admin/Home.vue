<template>
	<v-content class="">
		<v-container :id="block.tablename" :ref="block.tablename" v-for="(block, i) in blocks" :key="i" class="pa-5">
			<v-card raised class="">
				<div class="text-center">
					<h2 class="text-center pt-4 font-weight-bold panel-title-header first-color">{{ block.title }}{{ block.parent ? ' - ' + parent_data.title : '' }}</h2>
					<router-link v-if="block.parent" :to="`/admin-panel/${block.parent_block}`">
						<v-btn color="error">Wróc</v-btn>
					</router-link>
				</div>

				<v-divider></v-divider>
				<component :reloadFlag="reloadFlag" @parent_data="parent_data = $event" :is="block.component" :activeFlag="activeFlag" :deleteFlag="deleteFlag" @blockDataEmit="block.table = $event" class="panel-slider mb-5"></component>
				<v-card shaped class="">
					<v-card-title class="align-items-center pt-5">
						<h2 class="table-title first-color ma-0">Akcje</h2>
						<v-spacer></v-spacer>
						<v-text-field class="ma-0 pt-0" v-model="search" append-icon="mdi-magnify" label="Szukaj..." single-line hide-details ></v-text-field>
						<router-link v-if="block.multiple " class="form-link" :to="getAddButtonLink(block)">
							<v-btn class="first-bgc white--text ml-5">
								<v-icon left class="">{{  block.tablename == 'mails' ? 'mdi-email-plus' : 'mdi-plus' }}</v-icon>
								<span>{{ block.tablename == 'mails' ? 'Napisz wiadomość' : 'Dodaj' }}</span>
							</v-btn>
						</router-link>
					</v-card-title>
					<v-data-table :headers="headers[i]" :items="block.table" :search="search"
					:items-per-page="5"
					:footer-props="{
					'items-per-page-options': [5,10,15]
				}"
				class="elevation-1"
				@page-count="pageCount = $event" >
				<template v-slot:item.home_page="{ item }" >
					<div class="d-flex justify-content-center">
						<v-checkbox v-model="item.home_page" @change="setCheckbox(block.tablename, item)"></v-checkbox>
					</div>
				</template>
				<template v-slot:item.active="{ item }" >
					<div class="d-flex justify-content-center">
						<v-checkbox v-model="item.active" @change="setCheckbox(block.tablename, item)"></v-checkbox>
					</div>
				</template>
				<template v-slot:item.order="{ item }" >
					<div class="d-flex justify-content-center">
						<v-text-field v-model="item.order" @keyup="setCheckbox(block.tablename, item)"></v-text-field>
					</div>
				</template>
				<template v-slot:item.blocked="{ item }" >
					<div class="d-flex justify-content-center">
						<v-checkbox v-model="item.blocked" @change="setCheckbox(block.tablename, item)"></v-checkbox>
					</div>
				</template>
				<template v-slot:item.is_paid="{ item }" >
					<div class="d-flex justify-content-center">
						<v-checkbox v-model="item.is_paid" @change="setCheckbox(block.tablename, item)"></v-checkbox>
					</div>
				</template>
				<template v-slot:item.name="{ item }" >
					{{ block.tablename == 'users' || block.tablename == 'reservations' ? item.name : item.first_name + ' ' + item.last_name }}
				</template>
				<template v-slot:item.entry="{ item }" >
					{{ `${item.entry} - ${item.leave}` }}
				</template>
				<template v-slot:item.answer="{ item }" >
					<div class="d-flex justify-content-center">
						<v-checkbox v-model="item.answer" disabled></v-checkbox>
					</div>
				</template>
				<template v-slot:item.service_equipment="{ item }" >
					{{ item.service_equipment.title }}
				</template>
				<template v-slot:item.actions="{ item }">
					<div class="d-flex justify-content-end">
						<router-link v-if="block.list" class="form-link" :to="`/admin-panel/${block.list}/${item.id}`">
							<v-btn small color="warning" class="white--text mr-2">
								<v-icon left class="">mdi-format-list-bulleted</v-icon>
								<span>Lista</span>
							</v-btn>
						</router-link>
						<router-link v-if="block.gallery" class="form-link" :to="`/admin-panel/${block.tablename}/gallery/${item.id}`">
							<v-btn small color="warning" class="white--text mr-2">
								<v-icon left class="">mdi-image-multiple</v-icon>
								<span>Galeria</span>
							</v-btn>
						</router-link>
						<router-link class="form-link" :to="getEditLink(block, item)">
							<v-btn small color="primary" class="white--text mr-2">
								<v-icon left class="">{{  block.answer ? 'mdi-eye' : 'mdi-pencil' }}</v-icon>
								<span>{{ block.answer ? 'Pokaż' : 'Edytuj' }}</span>
							</v-btn>
						</router-link>
						<v-btn v-if="block.removable" @click="deleteItem(block, item)" small color="error" class="white--text">
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
	
	import axios from 'axios';
	import panelBlocks from '../../data/admin-panel-blocks.js';

	export default{
		data () {
			return {
				search: '',
				blocks:[],
				headers: [],
				deleteFlag: false,
				activeFlag: false,
				parent_data: {},
				reloadFlag: false,
			}
		},
		methods:{

			getAddButtonLink(block) {
				let parent_id = block.parent ? this.$route.params.parent_id + '/' : '';
				return `/admin-panel/${block.tablename}/${parent_id}form`;
			},
			getEditLink(block, item){
				let parent_id = block.parent ? this.$route.params.parent_id + '/' : '';
				return `/admin-panel/${block.tablename}/${parent_id}form/${item.id}`;
			},
			getRecordName(block, item) {
				if(block.tablename == 'users') return item.name;
				else if(block.tablename == 'mails') return item.subject;
				else return item.title;
			},
			deleteItem(block, item){
				if(confirm(`Na pewno chcesz usunąć trwale ${ block.tablename == 'users' ? 'użytkownika' : 'przedmiot'} "${this.getRecordName(block, item)}" z tabeli "${block.title}"? `)){
					this.$store.commit('loading', true);
					if(block.tablename == 'users') this.$store.dispatch('deleteUserComments', item.id);
					axios.delete(`/api/${block.tablename}/delete/${item.id}`).then(res => {
						this.deleteFlag = true;
						this.$store.commit('loading', false);
						setTimeout(()=>{this.deleteFlag = false}, 200);
					}).catch(err => {
						this.$store.commit('loading', false);
						console.log(err);
					})
				}
			},
			setBlocks(){
				if(this.$route.path.split('/')[2] == null){
					this.blocks = panelBlocks.main;
				} else {
					this.blocks = panelBlocks[this.$route.path.split('/')[2]];
				}
			},
			setCheckbox(table, item) {
				if(table == 'reservations') if(!confirm('Czy na pewno potwierdzić rezerwację? Zostanie wysłane potwierdzenie na maila użytkownika!')) return;

				axios.put(`/api/${table}/edit`, item, {
					headers:{
						'Content-Type': 'application/json'
					}
				}).then(res => {
					this.activeFlag = true;
					setTimeout(()=>{this.activeFlag = false}, 200);
					this.$store.commit('setSnackbar', 'Pomyślnie edytowano!');
					if(table == 'reservations' && item.active) axios.post('/api/reservations/accept', item).then(res2 => {
						if(res2.data.success) this.$store.commit('setSnackbar', res2.data.success.message);
						if(res2.data.error) this.$store.commit('setSnackbar', res2.data.error.message);
						this.reloadFlag = true;
						setTimeout(() => {this.reloadFlag = false}, 200);
					})
				}).catch(err => {
					this.$store.commit('setSnackbar', 'Coś poszło nie tak...')
				})
			},
			fillBaseHeaders() {
				this.headers = [];
				for(let block of this.blocks) {
					let headers = [
					{ text: 'Tytuł', align: 'start', value: 'title' },
					{ text: '', value: 'actions' },
					];
					if(block.answer) {
						headers[0] = { text: 'Odpowiedziano', align: 'center', value: 'answer', width: '10%'};
						headers.splice(1,0, {text: 'Temat', align: 'start', value: 'subject', width: '20%'}, {text: 'E-mail', align: 'start', value: 'email', width: '20%'});
					}
					if(block.order) headers.splice(0,0, { text: 'Kolejność', align: 'center', value: 'order', width: '10%' });
					if(block.tablename == 'players' || block.tablename == 'users' || block.tablename == 'reservations') headers[0] = { text: 'Imię i nazwisko', align: 'start', value: 'name'};
					if(block.is_paid) headers.splice(0,0, { text: 'Zapłacono', align: 'center', value: 'is_paid', width: '10%' });
					if(block.active) headers.splice(0,0, { text: 'Aktywny', align: 'center', value: 'active', width: '10%' });
					if(block.tablename == 'reservations') headers.splice(2,0, { text: 'Data i czas', align: 'center', value: 'entry', width: '20%' });
					if(block.tablename == 'users') headers.splice(1,0, { text: 'Blokuj', align: 'center', value: 'blocked', width: '10%' });
					if(block.home_page) headers.splice(0,0, { text: 'Pokaż na stronie głównej', align: 'center', value: 'home_page', width: '10%' });
					this.headers.push(headers); 
				}
			},
			
		},
		watch:{
			'$route'(){
				this.setBlocks();
				this.fillBaseHeaders(); 
			}
		},
		created(){
			this.setBlocks();
			this.fillBaseHeaders(); 

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