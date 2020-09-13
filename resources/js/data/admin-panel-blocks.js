import Slider from '../components/pages/Slider'
import AboutUs from '../components/pages/AboutUs'
import Offers from '../components/pages/Offers'
import News from '../components/pages/News'

export default{
	main:[
	{title: 'Slider', component: Slider, tablename: 'slider', table: [], multiple:true},
	{title: 'O klubie', component: AboutUs, tablename: 'about_us', table: [], multiple:false},
	{title: 'Oferta', component: Offers, tablename: 'offers',table: [], multiple:true},
	],
	news:[
	{title: 'Aktualności', component: News, tablename: 'news', table: [], multiple:true},
	],
}