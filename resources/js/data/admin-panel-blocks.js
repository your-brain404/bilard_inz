import Slider from '../components/pages/Slider'
import AboutUs from '../components/pages/AboutUs'
import Offers from '../components/pages/Offers'
import News from '../components/pages/News'
import Subpages from '../components/layouts/Subpages'

export default{
	main:[
	{title: 'Slider', component: Slider, tablename: 'slider', table: [], multiple:true, removable: true},
	{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple:false, removable: false},
	{title: 'Oferta', component: Offers, tablename: 'offers',table: [], multiple:true, removable: true},
	],
	news:[
	{title: 'Aktualności', component: News, tablename: 'news', table: [], multiple:true, removable: true},
	],

	subpages: [
	{title: 'Podstrony', component: Subpages, tablename: 'subpages', table: [], multiple: true, removable: false}
	]
}