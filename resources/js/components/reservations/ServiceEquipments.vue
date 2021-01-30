<template>
	<Reservations :serviceEquipments="serviceEquipments" :services="services" />
</template>

<script>
	import axios from 'axios'
	import Reservations from '../pages/Reservations'
	
	export default {
		props:['deleteFlag'],
		components: {
			Reservations
		},
		methods: {
			getServiceEquipments(){
				this.$store.commit('loading', true);
				axios.get(`/api/service_equipments/get_all`).then(res => {
					this.$store.commit('loading', false);
					if(this.$route.path.split('/')[1] == 'admin-panel') this.$emit('blockDataEmit', res.data.filter(eq => eq.service_id == this.$route.params.parent_id));
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
			getService() {
				this.$store.commit('loading', true);
				axios.get(`/api/services/get_one/${this.$route.params.parent_id}`).then(res => {
					this.$store.commit('loading', false);
					this.$emit('parentData', res.data)
				}).catch(err => {
					this.$store.commit('loading', false);
					console.log(err);
				})
			},
		},
		created() {
			this.getServiceEquipments();
			this.getService();
		},
		watch:{
			deleteFlag(){
				if(this.deleteFlag){
					this.getServiceEquipments();
					this.getService();
				}
			}
		},

	}
</script>