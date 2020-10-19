export default {
	comments: (state, comments) => state.comments = comments,
	deleteComment: (state, id) => state.comments.splice(state.comments.findIndex(com => com.id == id), 1),
	addComment: (state, comment) => state.comments.push(comment),
	addIdToNewComment: (state, id) => state.comments.find(com => com.id == undefined).id = id 
}