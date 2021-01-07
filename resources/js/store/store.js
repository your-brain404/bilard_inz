import Vue from 'vue';
import Vuex from 'vuex';
import Snackbar from './modules/snackbar/index.js';
import Auth from './modules/auth/index.js';
import Users from './modules/users/index.js';
import Comments from './modules/comments/index.js';
import Subpages from './modules/subpages/index.js';
import Loading from './modules/loading/index.js';
import Cart from './modules/cart/index.js';
import Settings from './modules/settings/index.js';
import Contact from './modules/contact/index.js';
import SnackbarAlerts from './modules/snackbar_alerts/index.js';

Vue.use(Vuex);

export default new Vuex.Store({
  modules:{
  	Snackbar, Auth, Comments, Users, Subpages, Loading, Cart, Settings, Contact, SnackbarAlerts
  }
});



