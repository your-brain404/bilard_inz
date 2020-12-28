import Slider from '../components/pages/Slider'
import AboutUs from '../components/pages/AboutUs'
import Offers from '../components/pages/Offers'
import News from '../components/pages/News'
import Partners from '../components/pages/Partners'
import Players from '../components/pages/Players'
import Subpages from '../components/layouts/Subpages'
import Cups from '../components/pages/Cups'
import History from '../components/pages/History'
import GalleryPage from '../components/pages/GalleryPage'
import LiveBroadcasts from '../components/pages/LiveBroadcasts'
import Mails from '../components/pages/Mails'
import Documents from '../components/pages/Documents'
import PriceList from '../components/pages/PriceList'
import LuckyNumber from '../components/pages/LuckyNumber'
import Reservations from '../components/pages/Reservations'
import Users from '../components/users/Users'
import Services from '../components/reservations/Services'
import ServiceEquipments from '../components/reservations/ServiceEquipments'
import PriceListCategories from '../components/price-list-categories/PriceListCategories'
import ShopCategories from '../components/shop/ShopCategories'
import ShopProducts from '../components/shop/ShopProducts'
import ShopItems from '../components/shop/ShopItems'
import ShopItemColors from '../components/shop/ShopItemColors'
import DeliveryOptions from '../components/shop/DeliveryOptions'

export default {
	main:[
	{title: 'Slider', component: Slider, tablename: 'slider', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	{title: 'Szczęśliwy los', component: LuckyNumber, tablename: 'lucky_number', table: [],  active: true},
	],
	
	news:[
	{title: 'Aktualności', component: News, tablename: 'news', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: true},
	],

	about_us: [
	{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple: false, removable: false, gallery: true, active: false, home_page: false},
	{title: 'Partnerzy', component: Partners, tablename: 'partners', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	],

	subpages: [
	{title: 'Podstrony', component: Subpages, tablename: 'subpages', table: [], multiple: false, removable: false, gallery: false, active: true, home_page: false, order: true}
	],

	offers: [
	{title: 'Oferta', component: Offers, tablename: 'offers', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: true},
	],

	players: [
	{title: 'Zawodnicy', component: Players, tablename: 'players', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: false},
	],

	cups: [
	{title: 'Puchary', component: Cups, tablename: 'cups', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: false},
	],

	history: [
	{title: 'Historia', component: History, tablename: 'history', table: [], multiple: true, removable: true, gallery: true, active: false, home_page: false},
	],

	live_broadcasts: [
	{title: 'Transmisje na żywo', component: LiveBroadcasts, tablename: 'live_broadcasts', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	],

	mails: [
	{title: 'Skrzynka pocztowa', component: Mails, tablename: 'mails', table: [], multiple: true, removable: true, gallery: false, active: false, home_page: false, answer: true},
	],

	users: [
	{title: 'Użytkownicy', component: Users, tablename: 'users', table: [], multiple: false, removable: true, gallery: false, active: true, home_page: false, answer: false},
	],

	gallery_page: [
	{title: 'Galeria', component: GalleryPage, tablename: 'gallery_page', table: [], multiple: false, removable: false, gallery: true, active: false, home_page: false, answer: false},
	],

	price_list_categories: [
	{title: 'Cennik Kategorie', component: PriceListCategories, tablename: 'price_list_categories', table: [], multiple: true, removable: true, list: 'price_list', active: true, home_page: false, answer: false},
	],

	price_list: [
	{title: 'Cennik', component: PriceList, tablename: 'price_list', table: [], multiple: true, removable: true, gallery: false, active: true, parent: 'price_list_categories', parent_block: 'price_list_categories', home_page: false, answer: false},
	], 

	reservations: [
	{title: 'Usługi', component: Services, tablename: 'services', table: [], multiple: true, removable: true, gallery: false, active: false, home_page: false, answer: false, list: 'service_equipments'},
	{title: 'Rezerwacje', component: Reservations, tablename: 'reservations', table: [], multiple: false, removable: true, gallery: false, active: true, home_page: false, answer: false, is_paid: true },
	
	], 

	service_equipments: [
	{title: 'Wyposażenie Usług', component: ServiceEquipments, tablename: 'service_equipments', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false, answer: false, parent: 'services', parent_block: 'reservations'},
	],

	shop: [
	{title: 'Kategorie Sklepu', component: ShopCategories, tablename: 'shop_categories', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false, list:'shop_products'},
	{title: 'Opcje wysyłki', component: DeliveryOptions, tablename: 'delivery_options', table: [], active: true},
	],

	shop_products: [
	{title: 'Produkty sklepu', component: ShopProducts, tablename: 'shop_products', table: [], multiple: true, removable: true, gallery: true, active: true, parent: 'shop_categories', parent_block: 'shop', list: 'shop_items'},
	],

	shop_items: [
	{title: 'Warianty produktów sklepu', component: ShopItems, tablename: 'shop_items', table: [], multiple: true, removable: true, gallery: false, active: true, parent: 'shop_products', parent_block: 'shop_products', default: true},
	
	],

	documents: [
	{title: 'Dokumenty', component: Documents, tablename: 'documents', table: [], multiple: true, removable: true, active: true},
	]

}