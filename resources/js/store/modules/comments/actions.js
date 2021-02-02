import {db} from '../../../firebase/firebase.js'

export default {
	async fetchCommentsWhere({commit, dispatch}, news_ids) {
		await db.collection("comments")
		.onSnapshot(querySnapshot => {
			let comments = [];
			let users = [];
			querySnapshot.forEach(doc => {
				let comment = doc.data();
				comment.id = doc.id;
				if(!users.includes(comment.user_id)) users.push(comment.user_id);
				if(news_ids.includes(comment.news_id)) comments.push(comment);
			});
			dispatch('fetchUsersByID', users);
			commit('comments', comments)
		})
	},
	async deleteUserComments(context, user_id) {
		await db.collection('comments')
		.onSnapshot(querySnapshot => {
			querySnapshot.forEach(doc => {
				if(doc.data().user_id == user_id) db.collection('comments').doc(doc.id).delete();
			});
		})
	}



}