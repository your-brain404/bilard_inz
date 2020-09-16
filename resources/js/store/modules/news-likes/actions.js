import {db} from '../../../firebase/firebase.js'

export default {
	fetchLikes({commit}){
		db.collection('news-likes').get().then(function(querySnapshot) {
			let likes = [];
			querySnapshot.forEach(function(doc) {
				let like = doc.data();
				like.id = doc.id;
				likes.push(like);
			});
			commit('setLikes', likes);
			commit('setLikesLength', likes.length);
		}).catch(function(err) {
			console.log(err);
		});
	}
}