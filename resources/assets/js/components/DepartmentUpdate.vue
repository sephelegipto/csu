<template>
	<div class="modal" :class="openmodal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">Update {{ list.name }}'s</p>
				<button class="delete" aria-label="close" @click='close'></button>
			</header>
			<section class="modal-card-body">
				<div class="field">
					<label class="label">Name</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.name">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Name</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.abbre}" type="text" placeholder="Abbre" v-model="list.abbre">
					</div>
					<small v-if="errors.abbre" class="has-text-danger">{{ errors.abbre[0] }}</small>
				</div>
			</section>
			<footer class="modal-card-foot">
				<button class="button is-success" @click='update'>Update</button>
				<button class="button" @click='close'>Cancel</button>
			</footer>
		</div>
	</div>
</template>

<script>
	export default{
		props:['openmodal'],
		data(){
			return{
				list:{},
				errors:{}
			}
		},
		methods:{
			close(){
				this.$emit('closeRequest');
			},
			update(){
				axios.patch(`/department/${this.list.department_id}`, this.$data.list).then((response)=> {
					
					this.$parent.lists.sort(function(a,b){
						if (a.name > b.name) {
							return 1;
						}else if(a.name < b.name){
							return -1;
						}
					})
					this.close()
				})
				.catch((error) => this.errors = error.response.data.errors)
				
			}
		}	
	}
</script>