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
import Settings from '@/components/settings/Settings'
import Contact from '@/components/settings/Contact'
import CommentsDescriptions from '@/components/news/CommentsDescriptions'
import ContactDescriptions from '@/components/contact/ContactDescriptions'
import CupsDescriptions from '@/components/cups/CupsDescriptions'
import DocumentsDescriptions from '@/components/emit-data-blocks/DocumentsDescriptions'
import GalleryDescriptions from '@/components/emit-data-blocks/GalleryDescriptions'
import HistoryDescriptions from '@/components/emit-data-blocks/HistoryDescriptions'
import LiveBroadcastsDescriptions from '@/components/emit-data-blocks/LiveBroadcastsDescriptions'
import NewsDescriptions from '@/components/emit-data-blocks/NewsDescriptions'
import OffersDescriptions from '@/components/emit-data-blocks/OffersDescriptions'
import PartnersDescriptions from '@/components/emit-data-blocks/PartnersDescriptions'
import PlayersDescriptions from '@/components/emit-data-blocks/PlayersDescriptions'
import PriceListDescriptions from '@/components/emit-data-blocks/PriceListDescriptions'
import ReservationsDescriptions from '@/components/emit-data-blocks/ReservationsDescriptions'
import CalendarDescriptions from '@/components/emit-data-blocks/CalendarDescriptions'
import DayFormats from '@/components/emit-data-blocks/DayFormats'
import ShopDescriptions from '@/components/emit-data-blocks/ShopDescriptions'
import CartDescriptions from '@/components/emit-data-blocks/CartDescriptions'
import BreadcrumbDescriptions from '@/components/emit-data-blocks/BreadcrumbDescriptions'
import LayoutElements from '@/components/emit-data-blocks/LayoutElements'
import DrawerDescriptions from '@/components/emit-data-blocks/DrawerDescriptions'

export default {
	main:[
	{title: 'Slider', component: Slider, tablename: 'slider', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	{title: 'Szczęśliwy los', component: LuckyNumber, tablename: 'lucky_number', table: [],  active: true},
	],
	
	news:[
	{title: 'Aktualności', component: News, tablename: 'news', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: true},
	{title: 'Aktualności opisy', component: NewsDescriptions, tablename: 'news_descriptions', table: []},
	{title: 'Komentarze opisy', component: CommentsDescriptions, tablename: 'comments_descriptions', table: []},
	],

	about_us: [
	{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple: false, removable: false, gallery: true, active: false, home_page: false},
	{title: 'Partnerzy', component: Partners, tablename: 'partners', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	{title: 'Partnerzy Opisy', component: PartnersDescriptions, tablename: 'partners_descriptions', table: []},
	],

	subpages: [
	{title: 'Podstrony', component: Subpages, tablename: 'subpages', table: [], multiple: false, removable: false, gallery: false, active: true, home_page: false, order: true}
	],

	descriptions: [
	{title: 'Breadcrumb opisy', component: BreadcrumbDescriptions, tablename: 'breadcrumb_descriptions', table: []},
	{title: 'Elementy Layoutu', component: LayoutElements, tablename: 'layout_elements', table: []},
	{title: 'Menu opisy', component: DrawerDescriptions, tablename: 'drawer_descriptions', table: []},
	],

	offers: [
	{title: 'Oferta', component: Offers, tablename: 'offers', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: true},
	{title: 'Oferta opisy', component: OffersDescriptions, tablename: 'offers_descriptions', table: []},
	],

	players: [
	{title: 'Zawodnicy', component: Players, tablename: 'players', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: false},
	{title: 'Zawodnicy opisy', component: PlayersDescriptions, tablename: 'players_descriptions', table: []},
	],

	cups: [
	{title: 'Puchary', component: Cups, tablename: 'cups', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: false},
	{title: 'Puchary opisy', component: CupsDescriptions, tablename: 'cups_descriptions', table: []},
	],

	history: [
	{title: 'Historia', component: History, tablename: 'history', table: [], multiple: true, removable: true, gallery: true, active: false, home_page: false},
	{title: 'Historia opisy', component: HistoryDescriptions, tablename: 'history_descriptions', table: []},
	],

	live_broadcasts: [
	{title: 'Transmisje na żywo', component: LiveBroadcasts, tablename: 'live_broadcasts', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	{title: 'Transmisje na żywo Opisy', component: LiveBroadcastsDescriptions, tablename: 'live_broadcasts_descriptions', table: []},
	],

	mails: [
	{title: 'Skrzynka pocztowa', component: Mails, tablename: 'mails', table: [], multiple: true, removable: true, gallery: false, active: false, home_page: false, answer: true},
	{title: 'Kontakt opisy', component: ContactDescriptions, tablename: 'contact_descriptions', table: []},
	],

	users: [
	{title: 'Użytkownicy', component: Users, tablename: 'users', table: [], multiple: false, removable: true, gallery: false, active: true, home_page: false, answer: false},
	],

	gallery_page: [
	{title: 'Galeria', component: GalleryPage, tablename: 'gallery_page', table: [], multiple: false, removable: false, gallery: true, active: false, home_page: false, answer: false},
	{title: 'Galeria Opisy', component: GalleryDescriptions, tablename: 'gallery_descriptions', table: []},
	],

	price_list_categories: [
	{title: 'Cennik Kategorie', component: PriceListCategories, tablename: 'price_list_categories', table: [], multiple: true, removable: true, list: 'price_list', active: true, home_page: false, answer: false},
	{title: 'Cennik opisy', component: PriceListDescriptions, tablename: 'price_list_descriptions', table: []},
	],

	price_list: [
	{title: 'Cennik', component: PriceList, tablename: 'price_list', table: [], multiple: true, removable: true, gallery: false, active: true, parent: 'price_list_categories', parent_block: 'price_list_categories', home_page: false, answer: false},
	], 

	reservations: [
	{title: 'Usługi', component: Services, tablename: 'services', table: [], multiple: true, removable: true, gallery: false, active: false, home_page: false, answer: false, list: 'service_equipments'},
	{title: 'Rezerwacje', component: Reservations, tablename: 'reservations', table: [], multiple: false, removable: true, gallery: false, active: true, home_page: false, answer: false, is_paid: true },
	{title: 'Rezerwacje opisy', component: ReservationsDescriptions, tablename: 'reservations_descriptions', table: []},
	{title: 'Formaty dni (kalendarz)', component: DayFormats, tablename: 'day_formats', table: [], multiple: true, removable: true},
	{title: 'Kalendarz opisy', component: CalendarDescriptions, tablename: 'calendar_descriptions', table: []},
	], 

	service_equipments: [
	{title: 'Wyposażenie Usług', component: ServiceEquipments, tablename: 'service_equipments', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false, answer: false, parent: 'services', parent_block: 'reservations'},
	],

	shop: [
	{title: 'Kategorie Sklepu', component: ShopCategories, tablename: 'shop_categories', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false, list:'shop_products'},
	{title: 'Opcje wysyłki', component: DeliveryOptions, tablename: 'delivery_options', table: [], active: true},
	{title: 'Sklep opisy', component: ShopDescriptions, tablename: 'shop_descriptions', table: []},
	{title: 'Koszyk opisy', component: CartDescriptions, tablename: 'cart_descriptions', table: []},
	],

	shop_products: [
	{title: 'Produkty sklepu', component: ShopProducts, tablename: 'shop_products', table: [], multiple: true, removable: true, gallery: true, active: true, parent: 'shop_categories', parent_block: 'shop', list: 'shop_items'},
	],

	shop_items: [
	{title: 'Warianty produktów sklepu', component: ShopItems, tablename: 'shop_items', table: [], multiple: true, removable: true, gallery: false, active: true, parent: 'shop_products', parent_block: 'shop_products', default: true},
	
	],

	documents: [
	{title: 'Dokumenty', component: Documents, tablename: 'documents', table: [], multiple: true, removable: true, active: true},
	{title: 'Dokumenty Opisy', component: DocumentsDescriptions, tablename: 'documents_descriptions', table: []},
	],

	settings: [
	{title: 'Ustawienia', component: Settings, tablename: 'settings', table: [], multiple: false, removable: false},
	{title: 'Dane Kontaktowe', component: Contact, tablename: 'contact', table: [], multiple: false, removable: false},

	],

}