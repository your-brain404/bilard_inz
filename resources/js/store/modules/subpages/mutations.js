export default {
	subpages: (state, subpages) => state.subpages = subpages,
	currentSubpage: (state, path) => state.currentSubpage = state.subpages.find(subpage => subpage.page.split('/')[1] == path.split('/')[1])
}