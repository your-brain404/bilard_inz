import Vue from 'vue';
import Vuex from 'vuex';
import Snackbar from './modules/snackbar/index.js';

Vue.use(Vuex);

export default new Vuex.Store({
  modules:{
  	Snackbar
  }
});



