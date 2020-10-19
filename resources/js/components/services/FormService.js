import axios from 'axios';
import ImagePicker from '../image-picker/ImagePicker';
import SnackbarAlerts from '../../data/snackbar-alerts.js'
import url from '../../helpers/photo/url.js'
import TagsInput from '../tagsinput/TagsInput.vue'

export default {
	data: {
		valid: true,
		name: '',
		rules: {
			titleRules: [
			v => !!v || 'Tytuł jest wymagany!'
			],
		},
		activePhoto: 'https://via.placeholder.com/250',
	},
	computed:{
		formTitle(){
			return this.$route.params.id ? 'Edycja' : 'Dodawanie';
		}
	},
	methods: {
		getImageDefaultPlaceholder(){
			return 'https://via.placeholder.com/250';
		},
		setImagePlaceholder(event){
			if(event === 'placeholder'){
				this.currentObject.photo = '',
				this.activePhoto = this.getImageDefaultPlaceholder();
			} else{
				this.activePhoto = url(event);
				this.currentObject.photo = event;
			}
		},
		getFormData(){
			delete this.currentObject.created_at;
			delete this.currentObject.updated_at;
			return this.currentObject;
		},
		resetForm(){
			this.currentObject = {};
			this.activePhoto = this.getImageDefaultPlaceholder();
		},
		add(formData){
			axios.post(`/api/${this.$route.path.split('/')[2]}/add`, formData,{
				headers:{
					'Content-Type': 'application/json'
				}
			}).then(res=>{
				this.$store.commit('setSnackbar', SnackbarAlerts.success);
				this.resetForm();
				this.$router.push(`/admin-panel#${this.$route.path.split('/')[2]}`);
			}).catch(err=>{
				this.$store.commit('setSnackbar', SnackbarAlerts.error);
			});
		},
		edit(formData){

			axios.put(`/api/${this.$route.path.split('/')[2]}/edit`, formData, {
				headers:{
					'Content-Type': 'application/json'
				}
			}).then(res=>{
				this.$store.commit('setSnackbar', SnackbarAlerts.success);
				this.$router.push(`/admin-panel#${this.$route.path.split('/')[2]}`);
			}).catch(err=>{
				this.$store.commit('setSnackbar', SnackbarAlerts.error);
				console.log(err);
			});
		},
		validate () {
			let formData = this.getFormData();
			this.$route.params.id ? this.edit(formData) : this.add(formData);
		},
		updateDeletedPhoto(){
			this.edit(this.getFormData());
		}

	},
	components:{
		ImagePicker, TagsInput
	},
	created(){
		if(this.$route.params.id){
			axios.get(`/api/${this.$route.path.split('/')[2]}/get_one/${this.$route.params.id}`).then(res =>{
				this.activePhoto = res.data.photo !== null ? url(res.data.photo) : this.activePhoto;
				this.currentObject = res.data;
			})
		}
	},
}