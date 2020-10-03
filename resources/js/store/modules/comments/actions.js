import {db} from '../../../firebase/firebase.js'

export default {
	fetchAllComments({commit}) {
		db.collection("comments")
		.orderBy('created','desc')
		.get()
		.then(querySnapshot =>{
			let comments = [];
			querySnapshot.forEach(doc => {
				let comment = doc.data();
				comment.id = doc.id;
				comments.push(comment);
			});
			commit('comments', comments);
		});
	},
	fetchCommentsWhere({commit}, news_id) {
		db.collection("comments")
		.where("news_id", "==", news_id)
		.orderBy('created','desc')
		.get()
		.then(querySnapshot => {
			let comments = [];
			querySnapshot.forEach(doc =>{
				let comment = doc.data();
				comment.id = doc.id;
				comments.push(comment);
			});
			commit('comments', comments);
		})
		
	}
}