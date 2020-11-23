import axios from 'axios'

export default {
	fetchCartProducts({commit}, products) {
		let request = `?${products.join('&id[]=')}`;
		axios.post('/api/shop_products/cart' + request).then(res => {
			commit('products', res.data);
		})
	}
}