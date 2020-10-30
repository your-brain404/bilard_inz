<template>
	<v-container fluid>
		<v-select v-model="selectedUsers" :items="searchUser()" return-object item-text="name" label="Użytkownicy" multiple chips>
			<template v-slot:prepend-item>
				<v-list-item>
					<v-text-field v-model="search" @keyup="searchUser" label="Znajdź"></v-text-field>
				</v-list-item>
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
			
			<template #selection="{ item }">
				<v-chip color="primary">{{item.name}}</v-chip>
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
				search: '',
				checkboxes: []
			}
		},

		watch: {
			selectedUsers() {
				this.$emit('users', this.selectedUsers);
			}
		},

		computed: {
			likesAllFruit () {
				return this.selectedUsers.length === this.users.length;
			},
			likesSomeFruit () {
				return this.selectedUsers.length > 0 && !this.likesAllFruit;
			},
			icon () {
				if (this.likesAllFruit) return 'mdi-close-box';
				if (this.likesSomeFruit) return 'mdi-minus-box';
				return 'mdi-checkbox-blank-outline';
			},
		},

		methods: {
			async getUsers() {
				await axios.get('/api/users/get_where?active=1').then(res => {
					this.users = res.data; 
				}).catch(err => {
					this.$store.commit('setSnackbar', 'Nie udało się załadować użytkowników...');
				})
			},
			toggle() {
				this.$nextTick(() => {
					if(this.likesAllFruit) {
						this.selectedUsers = [];
					}else {
						this.selectedUsers = this.users.slice();
					}
				});
			},
			searchUser() {
				let filteredUsers = [];
				for(let user of this.users) 
					user.name.toLowerCase().includes(this.search.toLowerCase()) ? filteredUsers.push(user) : true;

				return filteredUsers;
			}
		},
		created() {
			this.getUsers();
		}
	}
</script>