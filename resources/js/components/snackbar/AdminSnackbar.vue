<template>
	<div class="text-center">
		<v-snackbar color="primary" v-model="snackbar"  right bottom > 
			<div v-html="text"></div>

			<template v-slot:action="{ attrs }">
				<v-btn color="white" text v-bind="attrs" @click="snackbar = false" >
					Zamknij
				</v-btn>
			</template>
		</v-snackbar>
	</div>
</template>

<script>
	export default{
		watch:{
			snackbar(){
				setTimeout(()=>{this.$store.commit('unsetSnackbar'); }, 3000);
			}
		},
		computed:{
			snackbar(){
				return this.$store.getters.getSnackbar;
			},
			text(){
				return this.$store.getters.getSnackbarText;
			}
		}
	}
</script>
