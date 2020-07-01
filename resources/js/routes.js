import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from './views/public/Main'
import Home from './views/admin/Home'
import News from './views/admin/News'
import SliderForm from './views/admin/forms/Slider'

Vue.use(VueRouter);

const routes = [
  { path: '/', component: Main, name: 'Main' },
  { path: '/admin-panel', component: Home, name: 'Home'},
  { path: '/admin-panel/news', component: News, name: 'News'},
  { path: '/admin-panel/slider/form', component: SliderForm, name: 'SliderForm', children:[
  	{ path: '/:id', component: SliderForm, name: 'SliderForm'}
  ]},
]

export default new VueRouter({
  routes,
  mode: 'history'
})

