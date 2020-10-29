import axios from 'axios'

export default {
	fetchSomeUsers({commit}) {
		axios.get('/api/users/get_where?type=Admin&type=Klient&type=Zawodnik').then(res => {
			commit('users', res.data);
		})
	},
	fetchAllUsers({commit}) {
		axios.get('/api/users/get_all').then(res => {
			commit('users', res.data);
		})
	}
}