import Vue from 'vue';
import Vuex from 'vuex';
import Snackbar from './modules/snackbar/index.js';
import NewsLikes from './modules/news-likes/index.js';
import NewsDislikes from './modules/news-dislikes/index.js';

Vue.use(Vuex);

export default new Vuex.Store({
  modules:{
  	Snackbar, NewsLikes, NewsDislikes
  }
});



