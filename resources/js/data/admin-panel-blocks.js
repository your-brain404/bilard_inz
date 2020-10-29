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
import Users from '../components/users/Users'

export default {
	main:[
	{title: 'Slider', component: Slider, tablename: 'slider', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	],
	
	news:[
	{title: 'Aktualności', component: News, tablename: 'news', table: [], multiple: true, removable: true, gallery: true, active: true, home_page: true},
	],

	about_us: [
	{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple: false, removable: false, gallery: true, active: false, home_page: false},
	{title: 'Partnerzy', component: Partners, tablename: 'partners', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false},
	],

	subpages: [
	{title: 'Podstrony', component: Subpages, tablename: 'subpages', table: [], multiple: true, removable: false, gallery: false, active: false, home_page: false, order: true}
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
	{title: 'Użytkownicy', component: Users, tablename: 'users', table: [], multiple: true, removable: true, gallery: false, active: true, home_page: false, answer: false},
	],

	gallery_page: [
	{title: 'Galeria', component: GalleryPage, tablename: 'gallery_page', table: [], multiple: false, removable: false, gallery: true, active: false, home_page: false, answer: false},
	],

}