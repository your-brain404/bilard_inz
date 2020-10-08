<template>
	<v-navigation-drawer v-model="drawer" :color="color" left :permanent="true" app dark >
		<v-list dense nav class="py-0" >
			<v-list-item two-line :class="'px-0'">
				<v-list-item-avatar>
					<img src="https://randomuser.me/api/portraits/men/81.jpg">
				</v-list-item-avatar>

				<v-list-item-content>
					<v-list-item-title>Panel Administracyjny</v-list-item-title>
					<router-link to="/">
						<v-list-item-subtitle>Bilard Centrum Lubin</v-list-item-subtitle>
					</router-link>
				</v-list-item-content>
			</v-list-item>

			<v-divider></v-divider>

			<v-list-item v-for="item in items" :key="item.title" link active-class="nav-link" @click="$route.path == item.path ? true : $router.push(item.path)" >
				<v-list-item-icon>
					<v-icon>{{ item.icon }}</v-icon>
				</v-list-item-icon>

				<v-list-item-content>
					<v-list-item-title>{{ item.title }}</v-list-item-title>
				</v-list-item-content>
			</v-list-item>
		</v-list>
	</v-navigation-drawer>
</template>

<script>
	
	export default {
		data () {
			return {
				drawer: true,
				items: [
				{ title: 'Strona główna', icon: 'mdi-view-dashboard', path: '/admin-panel' },
				{ title: 'Aktualności', icon: 'mdi-newspaper', path: '/admin-panel/news' },
				],
				color: '#da5a33',
			}
		},
	}
</script>

<style>
	.nav-drawer{
		background-color: blue;
	}

</style>