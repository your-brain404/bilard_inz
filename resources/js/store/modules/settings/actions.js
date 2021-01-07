import axios from 'axios'
import Vue from 'vue'
import { VueReCaptcha } from 'vue-recaptcha-v3'

export default {
	settings: async ({commit}) => await axios.get('/api/settings/get_one/1').then(res => {
		commit('settings', res.data);
		Vue.use(VueReCaptcha, { siteKey: res.data.recaptcha_site_token })
	}).catch(err => console.log(err))
}