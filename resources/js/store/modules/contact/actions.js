import axios from 'axios'

export default {
	contact: ({commit}) => axios.get('/api/contact/get_one/1').then(res => commit('contact', res.data))
}