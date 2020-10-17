import Slider from '../components/pages/Slider'
import AboutUs from '../components/pages/AboutUs'
import Offers from '../components/pages/Offers'
import News from '../components/pages/News'
import Partners from '../components/pages/Partners'
import Subpages from '../components/layouts/Subpages'

export default{
	main:[
	{title: 'Slider', component: Slider, tablename: 'slider', table: [], multiple:true, removable: true, gallery: false},
	{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple:false, removable: false, gallery: true},
	{title: 'Oferta', component: Offers, tablename: 'offers',table: [], multiple:true, removable: true, gallery: true},
	],
	
	news:[
	{title: 'Aktualności', component: News, tablename: 'news', table: [], multiple:true, removable: true, gallery: true},
	],

	about_us: [
	{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple:false, removable: false, gallery: true},
	{title: 'Partnerzy', component: Partners, tablename: 'partners', table: [], multiple:true, removable: true, gallery: false},
	],

	subpages: [
	{title: 'Podstrony', component: Subpages, tablename: 'subpages', table: [], multiple: true, removable: false, gallery: false}
	],

}