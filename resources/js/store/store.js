import Vue from 'vue';
import Vuex from 'vuex';
import Snackbar from './modules/snackbar';
import Auth from './modules/auth';
import Users from './modules/users';
import Comments from './modules/comments';
import Subpages from './modules/subpages';
import Loading from './modules/loading';
import Cart from './modules/cart';
import Settings from './modules/settings';
import Contact from './modules/contact';
import SnackbarAlerts from './modules/snackbar_alerts';
import ValidationRules from './modules/validation_rules';

Vue.use(Vuex);

export default new Vuex.Store({
  modules:{
  	Snackbar, Auth, Comments, Users, Subpages, Loading, Cart, Settings, Contact, SnackbarAlerts, ValidationRules
  }
});



