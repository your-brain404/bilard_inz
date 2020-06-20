<template>
	<v-footer class="first-bgc" padless >
		<v-row justify="center" class="flex-column"  no-gutters >
			<div class="justify-center mx-auto">
				<v-btn v-for="link in links" :key="link"  color="white" text rounded class="my-2" >
					{{ link }}
				</v-btn>
			</div>
			<v-divider class="mt-0"></v-divider>
			<v-card flat tile class="first-bgc white--text text-center" >
				<v-card-text class="white--text pt-0">
					Phasellus feugiat arcu sapien, et iaculis ipsum elementum sit amet. Mauris cursus commodo interdum. Praesent ut risus eget metus luctus accumsan id ultrices nunc. Sed at orci sed massa consectetur dignissim a sit amet dui. Duis commodo vitae velit et faucibus. Morbi vehicula lacinia malesuada. Nulla placerat augue vel ipsum ultrices, cursus iaculis dui sollicitudin. Vestibulum eu ipsum vel diam elementum tempor vel ut orci. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
				</v-card-text>
			</v-card>
			<v-divider class=""></v-divider>
			<v-col class="first-bgc py-4 text-center white--text" cols="12" >
				{{ new Date().getFullYear() }} — <strong>Bilard Centrum Lubin</strong>
			</v-col>
		</v-row>
	</v-footer>
</template>

<script>
	export default {
		data: () => ({
			links: [
			'Home',
			'Aktualności'
			],
		}),
	}
</script>