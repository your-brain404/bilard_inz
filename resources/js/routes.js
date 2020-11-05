import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from './views/public/Main'
import Home from './views/admin/Home'
import SliderForm from './views/admin/forms/Slider'
import AboutUsForm from './views/admin/forms/AboutUs'
import CupsForm from './views/admin/forms/Cups'
import OffersForm from './views/admin/forms/Offers'
import NewsForm from './views/admin/forms/News'
import SubpagesForm from './views/admin/forms/Subpages'
import PartnersForm from './views/admin/forms/Partners'
import MailsForm from './views/admin/forms/Mails'
import MailsAnswerForm from './views/admin/forms/MailsAnswer'
import GalleryForm from './views/admin/forms/Gallery'
import UsersForm from './views/admin/forms/Users'
import HistoryForm from './views/admin/forms/History'
import PlayersForm from './views/admin/forms/Players'
import ServicesForm from './views/admin/forms/Services'
import ServiceEquipmentsForm from './views/admin/forms/ServiceEquipments'
import PriceListForm from './views/admin/forms/PriceList'
import ReservationsForm from './views/admin/forms/Reservations'
import PriceListCategoriesForm from './views/admin/forms/PriceListCategories'
import LiveBroadcastsForm from './views/admin/forms/LiveBroadcasts'
import AboutPage from './views/public/AboutPage'
import News from './components/pages/News'
import SingleNews from './components/pages/SingleNews'
import GalleryPage from './components/pages/GalleryPage'
import SingleOffer from './components/pages/SingleOffer'
import SinglePlayer from './components/pages/SinglePlayer'
import SingleCup from './components/pages/SingleCup'
import Players from './components/pages/Players'
import LiveBroadcasts from './components/pages/LiveBroadcasts'
import History from './components/pages/History'
import Cups from './components/pages/Cups'
import Offers from './components/pages/Offers'
import Contact from './components/pages/Contact'
import PriceList from './components/pages/PriceList'
import Reservations from './components/pages/Reservations'

Vue.use(VueRouter);

const routes = [
  { path: '/', component: Main, name: 'Main' },
  { path: '/aktualnosci', component: News, name: 'NewsListing' },
  { path: '/aktualnosci/:page', component: News, name: 'NewsListingPage' },
  { path: '/aktualnosci/kategoria/:category', component: News, name: 'NewsCategory' },
  { path: '/aktualnosci/tag/:tag', component: News, name: 'NewsTags' },
  { path: '/aktualnosci/:id/:title', component: SingleNews, name: 'SingleNews' },

  { path: '/o-klubie', component: AboutPage, name: 'AboutPage' },

  { path: '/oferta', component: Offers, name: 'OffersListing' },
  { path: '/oferta/:id/:title', component: SingleOffer, name: 'SingleOffer' },

  { path: '/zawodnicy', component: Players, name: 'PlayersListing' },
  { path: '/zawodnicy/:id/:title', component: SinglePlayer, name: 'SinglePlayer' },

  { path: '/puchary', component: Cups, name: 'CupsListing' },
  { path: '/puchary/:id/:title', component: SingleCup, name: 'SingleCup' },

  { path: '/historia', component: History, name: 'History' },

  { path: '/transmisje', component: LiveBroadcasts, name: 'LiveBroadcasts' },

  { path: '/kontakt', component: Contact, name: 'Contact' },

  { path: '/galeria', component: GalleryPage, name: 'Gallery' },

  { path: '/cennik', component: PriceList, name: 'PriceList' },

  { path: '/rezerwacja', component: Reservations, name: 'Reservations' },

  { path: '/admin-panel', component: Home, name: 'AdminHome'},
  { path: '/admin-panel/news', component: Home, name: 'AdminNews'},
  { path: '/admin-panel/subpages', component: Home, name: 'AdminSubpages'},
  { path: '/admin-panel/about_us', component: Home, name: 'AdminAboutUs'},
  { path: '/admin-panel/offers', component: Home, name: 'AdminOffers'},
  { path: '/admin-panel/players', component: Home, name: 'AdminPlayers'},
  { path: '/admin-panel/cups', component: Home, name: 'AdminCups'},
  { path: '/admin-panel/history', component: Home, name: 'AdminHistory'},
  { path: '/admin-panel/live_broadcasts', component: Home, name: 'AdminLiveBroadcasts'},
  { path: '/admin-panel/mails', component: Home, name: 'AdminMails'},
  { path: '/admin-panel/users', component: Home, name: 'AdminUsers'},
  { path: '/admin-panel/gallery_page', component: Home, name: 'AdminGalleryPage'},
  { path: '/admin-panel/price_list_categories', component: Home, name: 'AdminPriceListCategoriesPage'},
  { path: '/admin-panel/reservations', component: Home, name: 'AdminReservationsPage'},

  { path: '/admin-panel/price_list/:parent_id', component: Home, name: 'AdminPriceListPage'},
  { path: '/admin-panel/service_equipments/:parent_id', component: Home, name: 'AdminServiceEquipmentsListPage'},

  { path: '/admin-panel/slider/form', component: SliderForm, name: 'SliderForm'},
  { path: '/admin-panel/slider/form/:id', component: SliderForm, name: 'SliderFormEdit'},

  { path: '/admin-panel/services/form', component: ServicesForm, name: 'ServicesForm'},
  { path: '/admin-panel/services/form/:id', component: ServicesForm, name: 'ServicesFormEdit'},

  { path: '/admin-panel/about_us/form', component: AboutUsForm, name: 'AboutUsForm'},
  { path: '/admin-panel/about_us/form/:id', component: AboutUsForm, name: 'AboutUsFormEdit'},

  { path: '/admin-panel/offers/form', component: OffersForm, name: 'OffersForm'},
  { path: '/admin-panel/offers/form/:id', component: OffersForm, name: 'OffersFormEdit'},

  { path: '/admin-panel/news/form', component: NewsForm, name: 'NewsForm'},
  { path: '/admin-panel/news/form/:id', component: NewsForm, name: 'NewsFormEdit'},

  { path: '/admin-panel/subpages/form', component: SubpagesForm, name: 'SubpagesForm'},
  { path: '/admin-panel/subpages/form/:id', component: SubpagesForm, name: 'SubpagesFormEdit'},

  { path: '/admin-panel/reservations/form/:id', component: ReservationsForm, name: 'ReservationsFormEdit'},

  { path: '/admin-panel/partners/form', component: PartnersForm, name: 'PartnersForm'},
  { path: '/admin-panel/partners/form/:id', component: PartnersForm, name: 'PartnersFormEdit'},

  { path: '/admin-panel/players/form', component: PlayersForm, name: 'PlayersForm'},
  { path: '/admin-panel/players/form/:id', component: PlayersForm, name: 'PlayersFormEdit'},

  { path: '/admin-panel/cups/form', component: CupsForm, name: 'CupsForm'},
  { path: '/admin-panel/cups/form/:id', component: CupsForm, name: 'CupsFormEdit'},

  { path: '/admin-panel/history/form', component: HistoryForm, name: 'HistoryForm'},
  { path: '/admin-panel/history/form/:id', component: HistoryForm, name: 'HistoryFormEdit'},

  { path: '/admin-panel/live_broadcasts/form', component: LiveBroadcastsForm, name: 'LiveBroadcastsForm'},
  { path: '/admin-panel/live_broadcasts/form/:id', component: LiveBroadcastsForm, name: 'LiveBroadcastsFormEdit'},

  { path: '/admin-panel/mails/form', component: MailsForm, name: 'MailsForm'},
  { path: '/admin-panel/mails/form/:id', component: MailsAnswerForm, name: 'MailsFormEdit'},

  { path: '/admin-panel/price_list/:parent_id/form', component: PriceListForm, name: 'PriceListForm'},
  { path: '/admin-panel/price_list/:parent_id/form/:id', component: PriceListForm, name: 'PriceListFormEdit'},

  { path: '/admin-panel/service_equipments/:parent_id/form', component: ServiceEquipmentsForm, name: 'ServiceEquipmentsForm'},
  { path: '/admin-panel/service_equipments/:parent_id/form/:id', component: ServiceEquipmentsForm, name: 'ServiceEquipmentsFormEdit'},

  { path: '/admin-panel/price_list_categories/form', component: PriceListCategoriesForm, name: 'PriceListCategoriesForm'},
  { path: '/admin-panel/price_list_categories/form/:id', component: PriceListCategoriesForm, name: 'PriceListCategoriesFormEdit'},

  { path: '/admin-panel/users/form/:id', component: UsersForm, name: 'UsersFormEdit'},

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

