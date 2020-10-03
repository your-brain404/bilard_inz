import axios from 'axios'
import parseJwt from '../../../helpers/auth/tokenDecoder.js'

export default {
	fbLogin({commit}){
		axios.get('api/facebook/login/get_token').then(res => {
			sessionStorage.setItem('token', res.data.token);
			commit('setToken', res.data.token);
			commit('setUser', res.data.data);
		}).catch(err => console.log(err));
	},
	authLogin({commit}, credentials){
		axios.post('api/auth/login', credentials).then(res => {
			if(res.data.error){
				commit('setSnackbar', res.data.error.message);
			}else{
				sessionStorage.setItem('token', res.data.token);
				sessionStorage.setItem('authLogin', true);
				commit('setToken', res.data.token);
				commit('setUser', res.data.data);
				commit('setSnackbar', 'Pomyślnie zalogowano!');
			}
			
		}).catch(err => console.log(err));
	},
	authAutoLogin({commit}){
		let userId = parseJwt(sessionStorage.getItem('token')).sub;
		axios.get('api/users/get_one/' + userId).then(res => {
			commit('setUser', res.data);
			commit('setToken', sessionStorage.getItem('token'));
		}).catch(err => console.log(err));
	},
	register({commit}, credentials){
		axios.post('api/auth/register', credentials).then(res => {
			if(res.data.error){
				commit('setSnackbar', res.data.error.message);
			}else{
				sessionStorage.setItem('token', res.data.token);
				sessionStorage.setItem('authLogin', true);
				commit('setToken', res.data.token);
				commit('setUser', res.data.data);
				commit('setSnackbar', 'Pomyślnie zarejestrowano!');
			}
		}).catch(err => console.log(err));
	},
	logout({commit}){
		sessionStorage.removeItem('token');
		sessionStorage.removeItem('fbLogin');
		sessionStorage.removeItem('authLogin');
		commit('setUser', {});
		commit('setToken', '');
	}
}