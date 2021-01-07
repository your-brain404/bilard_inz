<template>
	<v-container class="py-12">
		<Stepper />
	</v-container>
</template>

<script>
	
	import Stepper from './Stepper' 

	export default {
		components: {
			Stepper
		},
		watch: {
			'$store.getters.subpages'() {
				if(this.$store.getters.subpages) {
					if(!this.$store.getters.subpages.find(subpage => subpage.page == '/sklep').active) this.$router.push('/')
				}
			}
		}
	}
</script>