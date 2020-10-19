export default {
	comments: (state, comments) => state.comments = comments,
	deleteComment: (state, id) => state.comments.splice(state.comments.findIndex(com => com.id == id), 1),
	
}