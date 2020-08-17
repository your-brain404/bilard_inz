export default {
	setSnackbar(state, snackbarText){
		state.snackbarText = snackbarText;
		state.snackbar = true;
	},
	setSnackbar(state){
		state.snackbarText = '';
		state.snackbar = false;
	}
}