import axios from 'axios'
import router from '@/routes.js'

export default {
	fetchSubpages({commit}) {
		axios.get('/api/subpages/get_all').then(res => {
			commit('subpages', res.data)
			
			commit('currentSubpage', `/${router.history.current.path.split('/')[1]}`)
		}).catch(err => console.log(err));
	}
}