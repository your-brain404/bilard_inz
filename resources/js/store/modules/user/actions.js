import axios from 'axios'

export default {
	fbLogin({commit}){
		axios.get('api/facebook/login/get_token').then(res => {
			sessionStorage.setItem('token', res.data.token);
			commit('setToken', res.data.token);
			commit('setUser', res.data.data);
		}).catch(err => console.log(err));
	}
}