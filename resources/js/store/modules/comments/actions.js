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
		let comments = [];
		for(let id of news_ids) {
			db.collection("comments")
			.where("news_id", "==", id)
			.get().then(querySnapshot => {
				querySnapshot.forEach(doc =>{
					let comment = doc.data();
					comment.id = doc.id;
					comments.push(comment);
				});
			}).catch(err => console.log(err))
		}
		comments.sort((a,b) => (a.created > b.created) ? 1 : ((b.created > a.created) ? -1 : 0)); 
		
		commit('comments', comments);
		
	}
}