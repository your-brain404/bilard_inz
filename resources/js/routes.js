import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from './views/public/Main'
import Home from './views/admin/Home'
import SliderForm from './views/admin/forms/Slider'
import AboutUsForm from './views/admin/forms/AboutUs'
import OffersForm from './views/admin/forms/Offers'
import NewsForm from './views/admin/forms/News'
import SubpagesForm from './views/admin/forms/Subpages'
import PartnersForm from './views/admin/forms/Partners'
import GalleryForm from './views/admin/forms/Gallery'
import AboutPage from './views/public/AboutPage'
import News from './components/pages/News'
import SingleNews from './components/pages/SingleNews'

Vue.use(VueRouter);

const routes = [
  { path: '/', component: Main, name: 'Main' },
  { path: '/aktualnosci', component: News, name: 'NewsListing' },
  { path: '/aktualnosci/:page', component: News, name: 'NewsListingPage' },
  { path: '/aktualnosci/kategoria/:category', component: News, name: 'NewsCategory' },
  { path: '/aktualnosci/tag/:tag', component: News, name: 'NewsTags' },
  { path: '/aktualnosci/:id/:title', component: SingleNews, name: 'SingleNews' },

  { path: '/o-klubie', component: AboutPage, name: 'AboutPage' },

  { path: '/admin-panel', component: Home, name: 'Home'},
  { path: '/admin-panel/news', component: Home, name: 'AdminNews'},
  { path: '/admin-panel/subpages', component: Home, name: 'Subpages'},
  { path: '/admin-panel/about_us', component: Home, name: 'AboutUs'},

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

  { path: '/admin-panel/partners/form', component: PartnersForm, name: 'PartnersForm'},
  { path: '/admin-panel/partners/form/:id', component: PartnersForm, name: 'PartnersFormEdit'},

  { path: '/admin-panel/:table/gallery/:id', component: GalleryForm, name: 'GalleryForm'},
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

