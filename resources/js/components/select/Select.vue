<template>
	<v-container fluid>
		<v-select v-model="selectedUsers" :items="users" label="Użytkownicy" multiple >
			<template v-slot:prepend-item>
				<v-list-item ripple @click="toggle" >
					<v-list-item-action>
						<v-icon :color="selectedUsers.length > 0 ? 'primary' : ''">
							{{ icon }}
						</v-icon>
					</v-list-item-action>
					<v-list-item-content>
						<v-list-item-title>
							Wybierz wszystkich
						</v-list-item-title>
					</v-list-item-content>
				</v-list-item>
				<v-divider class="mt-2"></v-divider>
			</template>

		</v-select>
	</v-container>
</template>

<script>
	import axios from 'axios'

	export default {
		data() {
			return {
				users: [],
				selectedUsers: [],
			}
		},

		computed: {
			likesAllFruit () {
				return this.selectedUsers.length === this.users.length
			},
			likesSomeFruit () {
				return this.selectedUsers.length > 0 && !this.likesAllFruit
			},
			icon () {
				if (this.likesAllFruit) return 'mdi-close-box'
					if (this.likesSomeFruit) return 'mdi-minus-box'
						return 'mdi-checkbox-blank-outline'
				},
			},

			methods: {
				getUsers() {
					axios.get('/api/users/get_where?active=1').then(res => {
						this.users = res.data;
					}).catch(err => {
						this.$store.commit('setSnackbar', 'Nie udało się załadować użytkowników...');
					})
				},
				toggle () {
					this.$nextTick(() => {
						if (this.likesAllFruit) {
							this.selectedUsers = []
						} else {
							this.selectedUsers = this.users.slice()
						}
					})
				},
			},
		}
	</script>