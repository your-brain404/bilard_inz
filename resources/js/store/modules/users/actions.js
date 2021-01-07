import axios from 'axios'

export default {
	async fetchSomeUsers({commit}) {
		await axios.get('/api/users/get_where?type=Admin&type=Klient&type=Zawodnik').then(res => {
			commit('users', res.data);
		})
	},
	async fetchAllUsers({commit}) {
		await axios.get('/api/users/get_all').then(res => {
			commit('users', res.data);
		})
	}
}