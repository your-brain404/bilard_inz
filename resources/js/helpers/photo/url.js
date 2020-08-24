import VueRouter from '../../routes.js'

export default function url(url){
	if(VueRouter.history.current.params.id){
		url = '../../'+url;
	}else{
		url = '../'+url;
	}

	return url;
} 