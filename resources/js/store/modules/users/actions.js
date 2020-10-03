import axios from 'axios'

export default {
	fetchAllUsers({commit}) {
		axios.get('/api/users/get_all').then(res => {
			commit('users', res.data);
		})
	}
}