import Store from '../../store/store.js'

export function user(user_id) {
	console.log(Store.getters.users);
	for(user of Store.getters.users) {
		if(user.id === user_id) {
			return user;
		}
	}
}