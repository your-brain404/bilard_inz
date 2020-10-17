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
		let query = db.collection("comments")
		query = query.where("news_id", "in", news_ids);
		query.get().then(querySnapshot => {
			let comments = [];
			querySnapshot.forEach(doc =>{
				let comment = doc.data();
				comment.id = doc.id;
				comments.push(comment);
			});
			comments.sort((a,b) => (a.created > b.created) ? 1 : ((b.created > a.created) ? -1 : 0)); 
			console.log(comments)
			commit('comments', comments);
		})
		
	}
}