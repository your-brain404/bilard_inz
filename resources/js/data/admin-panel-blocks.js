import Slider from '../components/pages/Slider'
import AboutUs from '../components/pages/AboutUs'
import Offers from '../components/pages/Offers'
import News from '../components/pages/News'
import Partners from '../components/pages/Partners'
import Players from '../components/pages/Players'
import Subpages from '../components/layouts/Subpages'

export default{
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
	{title: 'Podstrony', component: Subpages, tablename: 'subpages', table: [], multiple: true, removable: false, gallery: false, active: false, home_page: false}
	],

	offers: [
	{title: 'Oferta', component: Offers, tablename: 'offers',table: [], multiple: true, removable: true, gallery: true, active: true, home_page: true},
	],

	players: [
	{title: 'Zawodnicy', component: Players, tablename: 'players',table: [], multiple: true, removable: true, gallery: true, active: true, home_page: false},
	]

}