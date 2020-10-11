import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from './views/public/Main'
import Home from './views/admin/Home'
import SliderForm from './views/admin/forms/Slider'
import AboutUsForm from './views/admin/forms/AboutUs'
import OffersForm from './views/admin/forms/Offers'
import NewsForm from './views/admin/forms/News'
import SubpagesForm from './views/admin/forms/Subpages'
import News from './components/pages/News'

Vue.use(VueRouter);

const routes = [
  { path: '/', component: Main, name: 'Main' },
  { path: '/aktualnosci', component: News, name: 'NewsListing' },
  { path: '/aktualnosci/kategoria/:category', component: News, name: 'NewsCategory' },
  { path: '/aktualnosci/tag/:tag', component: News, name: 'NewsTags' },

  { path: '/admin-panel', component: Home, name: 'Home'},
  { path: '/admin-panel/news', component: Home, name: 'News'},
  { path: '/admin-panel/subpages', component: Home, name: 'Subpages'},

  { path: '/admin-panel/slider/form', component: SliderForm, name: 'SliderForm'},
  { path: '/admin-panel/slider/form/:id', component: SliderForm, name: 'SliderFormEdit'},

  { path: '/admin-panel/about_us/form', component: AboutUsForm, name: 'AboutUsForm'},
  { path: '/admin-panel/about_us/form/:id', component: AboutUsForm, name: 'AboutUsFormEdit'},

  { path: '/admin-panel/offers/form', component: OffersForm, name: 'OffersForm'},
  { path: '/admin-panel/offers/form/:id', component: OffersForm, name: 'OffersFormEdit'},

  { path: '/admin-panel/news/form', component: NewsForm, name: 'NewsForm'},
  { path: '/admin-panel/news/form/:id', component: NewsForm, name: 'NewsFormEdit'},

  { path: '/admin-panel/subpages/form', component: SubpagesForm, name: 'SubpagesForm'},
  { path: '/admin-panel/subpages/form/:id', component: SubpagesForm, name: 'SubpagesFormEdit'},
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

