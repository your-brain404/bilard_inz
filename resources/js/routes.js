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
import ShopCategoriesForm from './views/admin/forms/ShopCategories'
import LuckyNumberForm from './views/admin/forms/LuckyNumber'
import ShopProductsForm from './views/admin/forms/ShopProducts'
import ShopItemsForm from './views/admin/forms/ShopItems'
import ShopItemColorsForm from './views/admin/forms/ShopItemColors'
import DeliveryOptionsForm from './views/admin/forms/DeliveryOptions'
import DocumentsForm from './views/admin/forms/Documents'
import SettingsForm from './views/admin/forms/Settings'
import ContactForm from './views/admin/forms/Contact'
import CommentsDescriptionsForm from './views/admin/forms/CommentsDescriptions'
import ContactDescriptionsForm from './views/admin/forms/ContactDescriptions'
import CupsDescriptionsForm from './views/admin/forms/CupsDescriptions'
import DocumentsDescriptionsForm from './views/admin/forms/DocumentsDescriptions'
import GalleryDescriptionsForm from './views/admin/forms/GalleryDescriptions'
import HistoryDescriptionsForm from './views/admin/forms/HistoryDescriptions'
import LiveBroadcastsDescriptionsForm from './views/admin/forms/LiveBroadcastsDescriptions'
import NewsDescriptionsForm from './views/admin/forms/NewsDescriptions'
import AboutPage from './views/public/AboutPage'
import News from './components/pages/News'
import SingleNews from './components/pages/SingleNews'
import GalleryPage from './components/pages/GalleryPage'
import SingleOffer from './components/pages/SingleOffer'
import SinglePlayer from './components/pages/SinglePlayer'
import SingleProduct from './components/pages/SingleProduct'
import SingleCup from './components/pages/SingleCup'
import Players from './components/pages/Players'
import LiveBroadcasts from './components/pages/LiveBroadcasts'
import History from './components/pages/History'
import Cups from './components/pages/Cups'
import Offers from './components/pages/Offers'
import Contact from './components/pages/Contact'
import PriceList from './components/pages/PriceList'
import Reservations from './components/pages/Reservations'
import Shop from './components/pages/Shop'
import Documents from './components/pages/Documents'
import Cart from './components/shop/Cart'

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

{ path: '/koszyk', component: Cart, name: 'Cart' },

{ path: '/dokumenty', component: Documents, name: 'Documents' },

{ path: '/sklep/', component: Shop, name: 'Shop' },
{ path: '/sklep/:page', component: Shop, name: 'ShopPagination' },
{ path: '/sklep/:category_id/:page', component: Shop, name: 'ShopCategory' },
{ path: '/sklep/produkt/:id/:title', component: Shop, name: 'SingleProduct' },

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
{ path: '/admin-panel/shop', component: Home, name: 'AdminShopPage'},
{ path: '/admin-panel/documents', component: Home, name: 'AdminDocumentsPage'},
{ path: '/admin-panel/settings', component: Home, name: 'AdminSettingsPage'},


{ path: '/admin-panel/price_list/:parent_id', component: Home, name: 'AdminPriceListPage'},
{ path: '/admin-panel/service_equipments/:parent_id', component: Home, name: 'AdminServiceEquipmentsListPage'},
{ path: '/admin-panel/shop_products/:parent_id', component: Home, name: 'AdminShopProductsListPage'},
{ path: '/admin-panel/shop_items/:parent_id', component: Home, name: 'AdminShopItemsListPage'},

{ path: '/admin-panel/slider/form', component: SliderForm, name: 'SliderForm'},
{ path: '/admin-panel/slider/form/:id', component: SliderForm, name: 'SliderFormEdit'},

{ path: '/admin-panel/lucky_number/form', component: LuckyNumberForm, name: 'LuckyNumberForm'},
{ path: '/admin-panel/lucky_number/form/:id', component: LuckyNumberForm, name: 'LuckyNumberFormEdit'},

{path: '/admin-panel/settings/form/:id', component: SettingsForm, name: 'SettingsFormEdit'},

{path: '/admin-panel/contact/form/:id', component: ContactForm, name: 'ContactFormEdit'},

{path: '/admin-panel/comments_descriptions/form/:id', component: CommentsDescriptionsForm, name: 'CommentsDescriptionsFormEdit'},

{path: '/admin-panel/news_descriptions/form/:id', component: NewsDescriptionsForm, name: 'NewsDescriptionsFormEdit'},

{path: '/admin-panel/documents_descriptions/form/:id', component: DocumentsDescriptionsForm, name: 'DocumentsDescriptionsFormEdit'},

{path: '/admin-panel/history_descriptions/form/:id', component: HistoryDescriptionsForm, name: 'HistoryDescriptionsFormEdit'},

{path: '/admin-panel/live_broadcasts_descriptions/form/:id', component: LiveBroadcastsDescriptionsForm, name: 'LiveBroadcastsDescriptionsFormEdit'},

{path: '/admin-panel/contact_descriptions/form/:id', component: ContactDescriptionsForm, name: 'ContactDescriptionsFormEdit'},

{path: '/admin-panel/cups_descriptions/form/:id', component: CupsDescriptionsForm, name: 'CupsDescriptionsFormEdit'},

{path: '/admin-panel/gallery_descriptions/form/:id', component: GalleryDescriptionsForm, name: 'GalleryDescriptionsFormEdit'},

{ path: '/admin-panel/documents/form', component: DocumentsForm, name: 'DocumentsForm'},
{ path: '/admin-panel/documents/form/:id', component: DocumentsForm, name: 'DocumentsFormEdit'},

{ path: '/admin-panel/delivery_options/form', component: DeliveryOptionsForm, name: 'DeliveryOptionsForm'},
{ path: '/admin-panel/delivery_options/form/:id', component: DeliveryOptionsForm, name: 'DeliveryOptionsFormEdit'},

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

{ path: '/admin-panel/shop_products/:parent_id/form', component: ShopProductsForm, name: 'ShopProductsForm'},
{ path: '/admin-panel/shop_products/:parent_id/form/:id', component: ShopProductsForm, name: 'ShopProductsFormEdit'},

{ path: '/admin-panel/service_equipments/:parent_id/form', component: ServiceEquipmentsForm, name: 'ServiceEquipmentsForm'},
{ path: '/admin-panel/service_equipments/:parent_id/form/:id', component: ServiceEquipmentsForm, name: 'ServiceEquipmentsFormEdit'},

{ path: '/admin-panel/price_list_categories/form', component: PriceListCategoriesForm, name: 'PriceListCategoriesForm'},
{ path: '/admin-panel/price_list_categories/form/:id', component: PriceListCategoriesForm, name: 'PriceListCategoriesFormEdit'},

{ path: '/admin-panel/users/form/:id', component: UsersForm, name: 'UsersFormEdit'},

{ path: '/admin-panel/:table/gallery/:id', component: GalleryForm, name: 'GalleryForm'},



{ path: '/admin-panel/shop_categories/form', component: ShopCategoriesForm, name: 'ShopCategoriesForm'},
{ path: '/admin-panel/shop_categories/form/:id', component: ShopCategoriesForm, name: 'ShopCategoriesFormEdit'},

{ path: '/admin-panel/shop_items/:parent_id/form', component: ShopItemsForm, name: 'ShopItemsForm'},
{ path: '/admin-panel/shop_items/:parent_id/form/:id', component: ShopItemsForm, name: 'ShopItemsFormEdit'},

{ path: '/admin-panel/shop_item_colors/form', component: ShopItemColorsForm, name: 'ShopItemColorsForm'},
{ path: '/admin-panel/shop_item_colors/form/:id', component: ShopItemColorsForm, name: 'ShopItemColorsFormEdit'},


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

