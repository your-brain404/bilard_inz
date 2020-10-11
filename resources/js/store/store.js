import Vue from 'vue';
import Vuex from 'vuex';
import Snackbar from './modules/snackbar/index.js';
import Auth from './modules/auth/index.js';
import Users from './modules/users/index.js';
import Comments from './modules/comments/index.js';
import Subpages from './modules/subpages/index.js';

Vue.use(Vuex);

export default new Vuex.Store({
  modules:{
  	Snackbar, Auth, Comments, Users, Subpages
  }
});



