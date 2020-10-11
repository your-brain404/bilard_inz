import axios from 'axios'

export default {
	fetchSubpages({commit}) {
		axios.get('api/subpages/get_all').then(res => commit('subpages', res.data)).catch(err => console.log(err));
	}
}