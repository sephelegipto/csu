<template>
	<div>
		


	<Add :openmodal='addActive' @closeRequest='close'></Add>
	<Show :openmodal='showActive' @closeRequest='close'></Show>
	<Update :openmodal='updateActive' @closeRequest='close'></Update>
	</div>
</template>

<script>
let Add = require('./Add.vue');
let Show = require('./Show.vue');
let Update = require('./Update.vue');
	export default{
		components:{Add,Show,Update},
		data(){
			return{
				addActive : '',
				showActive : '',
				updateActive : '',
				lists:{},
				errors:{},
				loading:false,
				searchQuery:'',
				temp:''
			}
		},
		watch:{
			searchQuery(){
				if (this.searchQuery.length > 0) {
					this.temp = this.lists.filter((item) => {
						return Object.keys(item).some((key)=>{
							let string = String(item[key]) 
							return string.toLowerCase().indexOf(this.searchQuery.toLowerCase())>-1
							// console.log(string)
						})
					});
					// console.log(result)
				}else{
					this.temp = this.lists
				}
			}
		},
		mounted(){
			axios.post('/phonebook/getData')
			.then((response)=> this.lists = this.temp = response.data)
			.catch((error) => this.errors = error.response.data.errors)
		},
		methods:{
			openAdd(){
				this.addActive = 'is-active';
			},
			openShow(key){
				this.$children[1].list = this.temp[key]
				this.showActive = 'is-active';
			},
			openUpdate(key){
				this.$children[2].list = this.temp[key]
				this.updateActive = 'is-active';
			},
			close(){
				this.addActive = this.showActive = this.updateActive = ''
			},
			del(key,id){
				if (confirm("Are you sure ?")) {
					this.loading = !this.loading
					axios.delete(`/phonebook/${id}`)
					.then((response)=> {this.lists.splice(key,1);this.loading = !this.loading})
					.catch((error) => this.errors = error.response.data.errors)	
				}
				console.log(`${key} ${id}`)
			}
		}
	}
</script>