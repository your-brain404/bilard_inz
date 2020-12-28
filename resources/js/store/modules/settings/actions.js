import axios from 'axios'

export default {
	settings: ({commit}) => axios.get('/api/settings/get_one/1').then(res => commit('settings', res.data)).catch(err => console.log(err))
}