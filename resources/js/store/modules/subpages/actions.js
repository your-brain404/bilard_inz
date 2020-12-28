import axios from 'axios'

export default {
	fetchSubpages({commit}) {
		axios.get('api/subpages/get_where?active=1').then(res => commit('subpages', res.data)).catch(err => console.log(err));
	}
}