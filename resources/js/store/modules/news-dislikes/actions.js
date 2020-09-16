import {db} from '../../../firebase/firebase.js'

export default {
	fetchDislikes({commit}){
		db.collection('news-dislikes').get().then(function(querySnapshot) {
			let dislikes = [];
			querySnapshot.forEach(function(doc) {
				let dislike = doc.data();
				dislike.id = doc.id;
				dislikes.push(dislike);
			});
			commit('setDislikes', dislikes);
			commit('setDislikesLength', dislikes.length);
		}).catch(function(err) {
			console.log(err);
		});
	}
}