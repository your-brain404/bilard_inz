<template>
	<v-navigation-drawer v-model="drawer" :color="color" left :permanent="true" expand-on-hover app dark >
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
				{ title: 'O Klubie', icon: 'mdi-information', path: '/admin-panel/about_us' },
				{ title: 'Oferta', icon: 'mdi-tag-multiple', path: '/admin-panel/offers' },
				{ title: 'Zawodnicy', icon: 'mdi-billiards-rack', path: '/admin-panel/players' },
				{ title: 'Puchary', icon: 'mdi-trophy', path: '/admin-panel/cups' },
				{ title: 'Historia', icon: 'mdi-history', path: '/admin-panel/history' },
				{ title: 'Transmisje na żywo', icon: 'mdi-antenna', path: '/admin-panel/live_broadcasts' },
				{ title: 'Skrzynka pocztowa', icon: 'mdi-mailbox', path: '/admin-panel/mails' },
				{ title: 'Podstrony', icon: 'mdi-folder-multiple', path: '/admin-panel/subpages' },
				{ title: 'Użytkownicy', icon: 'mdi-account', path: '/admin-panel/users' },
				],
				color: '#da5a33',
			}
		},
		created() {
			this.$store.dispatch('fetchSomeUsers');
		}
	}
</script>

<style>
	.nav-drawer{
		background-color: blue;
	}

	.ql-editor strong{
		font-weight:bold;
	}
	.ql-snow .ql-toolbar .ql-picker-item.ql-selected .ql-stroke, .ql-snow .ql-toolbar .ql-picker-item.ql-selected .ql-stroke-miter, .ql-snow .ql-toolbar .ql-picker-item:hover .ql-stroke, .ql-snow .ql-toolbar .ql-picker-item:hover .ql-stroke-miter, .ql-snow .ql-toolbar .ql-picker-label.ql-active .ql-stroke, .ql-snow .ql-toolbar .ql-picker-label.ql-active .ql-stroke-miter, .ql-snow .ql-toolbar .ql-picker-label:hover .ql-stroke, .ql-snow .ql-toolbar .ql-picker-label:hover .ql-stroke-miter, .ql-snow .ql-toolbar button.ql-active .ql-stroke, .ql-snow .ql-toolbar button.ql-active .ql-stroke-miter, .ql-snow .ql-toolbar button:focus .ql-stroke, .ql-snow .ql-toolbar button:focus .ql-stroke-miter, .ql-snow .ql-toolbar button:hover .ql-stroke, .ql-snow .ql-toolbar button:hover .ql-stroke-miter, .ql-snow.ql-toolbar .ql-picker-item.ql-selected .ql-stroke, .ql-snow.ql-toolbar .ql-picker-item.ql-selected .ql-stroke-miter, .ql-snow.ql-toolbar .ql-picker-item:hover .ql-stroke, .ql-snow.ql-toolbar .ql-picker-item:hover .ql-stroke-miter, .ql-snow.ql-toolbar .ql-picker-label.ql-active .ql-stroke, .ql-snow.ql-toolbar .ql-picker-label.ql-active .ql-stroke-miter, .ql-snow.ql-toolbar .ql-picker-label:hover .ql-stroke, .ql-snow.ql-toolbar .ql-picker-label:hover .ql-stroke-miter, .ql-snow.ql-toolbar button.ql-active .ql-stroke, .ql-snow.ql-toolbar button.ql-active .ql-stroke-miter, .ql-snow.ql-toolbar button:focus .ql-stroke, .ql-snow.ql-toolbar button:focus .ql-stroke-miter, .ql-snow.ql-toolbar button:hover .ql-stroke, .ql-snow.ql-toolbar button:hover .ql-stroke-miter {
		stroke: var(--first-color)!important;
	}
	.ql-snow .ql-toolbar .ql-picker-item.ql-selected, .ql-snow .ql-toolbar .ql-picker-item:hover, .ql-snow .ql-toolbar .ql-picker-label.ql-active, .ql-snow .ql-toolbar .ql-picker-label:hover, .ql-snow .ql-toolbar button.ql-active, .ql-snow .ql-toolbar button:focus, .ql-snow .ql-toolbar button:hover, .ql-snow.ql-toolbar .ql-picker-item.ql-selected, .ql-snow.ql-toolbar .ql-picker-item:hover, .ql-snow.ql-toolbar .ql-picker-label.ql-active, .ql-snow.ql-toolbar .ql-picker-label:hover, .ql-snow.ql-toolbar button.ql-active, .ql-snow.ql-toolbar button:focus, .ql-snow.ql-toolbar button:hover {
		color: var(--first-color)!important;
	}

	.ql-snow .ql-toolbar .ql-picker-item.ql-selected .ql-fill, .ql-snow .ql-toolbar .ql-picker-item.ql-selected .ql-stroke.ql-fill, .ql-snow .ql-toolbar .ql-picker-item:hover .ql-fill, .ql-snow .ql-toolbar .ql-picker-item:hover .ql-stroke.ql-fill, .ql-snow .ql-toolbar .ql-picker-label.ql-active .ql-fill, .ql-snow .ql-toolbar .ql-picker-label.ql-active .ql-stroke.ql-fill, .ql-snow .ql-toolbar .ql-picker-label:hover .ql-fill, .ql-snow .ql-toolbar .ql-picker-label:hover .ql-stroke.ql-fill, .ql-snow .ql-toolbar button.ql-active .ql-fill, .ql-snow .ql-toolbar button.ql-active .ql-stroke.ql-fill, .ql-snow .ql-toolbar button:focus .ql-fill, .ql-snow .ql-toolbar button:focus .ql-stroke.ql-fill, .ql-snow .ql-toolbar button:hover .ql-fill, .ql-snow .ql-toolbar button:hover .ql-stroke.ql-fill, .ql-snow.ql-toolbar .ql-picker-item.ql-selected .ql-fill, .ql-snow.ql-toolbar .ql-picker-item.ql-selected .ql-stroke.ql-fill, .ql-snow.ql-toolbar .ql-picker-item:hover .ql-fill, .ql-snow.ql-toolbar .ql-picker-item:hover .ql-stroke.ql-fill, .ql-snow.ql-toolbar .ql-picker-label.ql-active .ql-fill, .ql-snow.ql-toolbar .ql-picker-label.ql-active .ql-stroke.ql-fill, .ql-snow.ql-toolbar .ql-picker-label:hover .ql-fill, .ql-snow.ql-toolbar .ql-picker-label:hover .ql-stroke.ql-fill, .ql-snow.ql-toolbar button.ql-active .ql-fill, .ql-snow.ql-toolbar button.ql-active .ql-stroke.ql-fill, .ql-snow.ql-toolbar button:focus .ql-fill, .ql-snow.ql-toolbar button:focus .ql-stroke.ql-fill, .ql-snow.ql-toolbar button:hover .ql-fill, .ql-snow.ql-toolbar button:hover .ql-stroke.ql-fill {
		fill: var(--first-color)!important;
	}

</style>