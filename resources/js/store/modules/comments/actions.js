import {db} from '../../../firebase/firebase.js'

export default {
	fetchAllComments({commit}) {
		db.collection("comments")
		.orderBy('created','asc')
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
	fetchCommentsWhere({commit}, news_ids) {
		db.collection("comments")
		.onSnapshot(querySnapshot => {
			let comments = [];
			querySnapshot.forEach(doc => {
				let comment = doc.data();
				comment.id = doc.id;
				if(news_ids.includes(comment.news_id)) comments.push(comment);
			});
			commit('comments', comments)
		})
	},
	deleteUserComments(context, user_id) {
		db.collection('comments')
		.onSnapshot(querySnapshot => {
			querySnapshot.forEach(doc => {
				if(doc.data().user_id == user_id) db.collection('comments').doc(doc.id).delete();
			});
		})
	}



}