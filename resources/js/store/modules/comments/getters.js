export default {
	comments: state => state.comments.sort((a,b) => (a.created > b.created) ? 1 : ((b.created > a.created) ? -1 : 0))
		
}