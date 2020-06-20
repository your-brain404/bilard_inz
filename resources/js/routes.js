import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from './views/public/Main'
import Bar from './components/Bar'
import Home from './views/admin/Home'
import News from './views/admin/News'

Vue.use(VueRouter);

const routes = [
  { path: '/', component: Main, name: 'Main' },
  { path: '/admin-panel', component: Home, name: 'Home'},
  { path: '/admin-panel/news', component: News, name: 'News'}
]

export default new VueRouter({
  routes,
  mode: 'history'
})

