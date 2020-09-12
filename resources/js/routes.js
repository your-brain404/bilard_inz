import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from './views/public/Main'
import Home from './views/admin/Home'
import News from './views/admin/News'
import SliderForm from './views/admin/forms/Slider'
import AboutUsForm from './views/admin/forms/AboutUs'
import OffersForm from './views/admin/forms/Offers'

Vue.use(VueRouter);

const routes = [
  { path: '/', component: Main, name: 'Main' },
  { path: '/admin-panel', component: Home, name: 'Home'},
  { path: '/admin-panel/news', component: News, name: 'News'},

  { path: '/admin-panel/slider/form', component: SliderForm, name: 'SliderForm'},
  { path: '/admin-panel/slider/form/:id', component: SliderForm, name: 'SliderFormEdit'},

  { path: '/admin-panel/about_us/form', component: AboutUsForm, name: 'AboutUsForm'},
  { path: '/admin-panel/about_us/form/:id', component: AboutUsForm, name: 'AboutUsFormEdit'},

  { path: '/admin-panel/offers/form', component: OffersForm, name: 'OffersForm'},
  { path: '/admin-panel/offers/form/:id', component: OffersForm, name: 'OffersFormEdit'},
]

export default new VueRouter({
  routes,
  mode: 'history',
  scrollBehavior: function (to) {
    if (to.hash) {
      return {
        selector: to.hash
      }
    }
  },
})

