

import Vue from 'vue'
import router from './routes'
import vuetify from '../plugins/vuetify'
import axios from "axios";
import VueAxios from 'vue-axios';
import Vuex from 'vuex';
import store from './store/store.js';
import Vuelidate from 'vuelidate';

Vue.component('app', require('./components/App.vue').default);

Vue.use(Vuelidate);
Vue.use(VueAxios, axios);

Vue.axios.defaults.baseURL = window.location.origin;
Vue.axios.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem('token');
    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }
    config.headers['Access-Control-Allow-Origin'] = '*';

    return config;
  },
  (error) => Promise.reject(error)
);



const app = new Vue({
    el: '#app',
    router,
    vuetify,
    store
});
