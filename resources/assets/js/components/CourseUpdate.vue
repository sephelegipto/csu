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
						<input class="input" :class="{'is-danger':errors.course_name}" type="text" placeholder="Name" v-model="list.course_name">
					</div>
					<small v-if="errors.course_name" class="has-text-danger">{{ errors.course_name[0] }}</small>
					<label class="label">Name</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.course_name}" type="text" placeholder="Abbreviation" v-model="list.abbre">
					</div>
					<small v-if="errors.course_name" class="has-text-danger">{{ errors.course_name[0] }}</small>
					<label class="label">Department</label>
					<div class="select">
						
						<select v-model="list.dept_name">
							<option v-for="dep,key in dept" v-bind:value="dep.abbre">{{ dep.name }}</option>
						</select>						
					</div>

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
			list:{
				course_name:'',
				department_id: '',
				dept_name:''
			},
			dept:{

			},
			errors:{}
		}
	},
	methods:{
		close(){
			this.$emit('closeRequest');
		},
		update(){
			axios.patch(`/course/${this.list.department_id}`, this.$data.list).then((response)=> {

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