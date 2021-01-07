<template>
	<v-footer class="first-bgc" padless >
		<v-row justify="center" class="flex-column"  no-gutters >
			<div class="d-flex justify-content-center flex-wrap">
				<router-link v-if="page.page != '/koszyk' && page.active" :to="page.page" v-for="page in subpages" :key="page.id">
					<v-btn color="white" text rounded class="my-2" >
						{{ page.title }}
					</v-btn>
				</router-link>
			</div>
			<v-divider class="mt-0"></v-divider>
			<v-card flat tile class="first-bgc white--text text-center" >
				<v-card-text class="white--text pt-0" v-html="settings.description"></v-card-text>
			</v-card>
			<v-divider class=""></v-divider>
			<v-col class="first-bgc py-4 text-center white--text" cols="12" >
				2021 — <strong>Wykonał Daniel Lewicki <br><a class="white--text" href="tel:+48 794 640 515">+48 794 640 515</a><br><a class="white--text" href="mailto:dany97971@gmail.com">dany97971@gmail.com</a></strong>
			</v-col>
		</v-row>
	</v-footer>
</template>

<script>
	export default {
		computed: {
			subpages() {
				return this.$store.getters.subpages;
			},
			settings() {
				return this.$store.getters.settings;
			}
		}
	}
</script>
