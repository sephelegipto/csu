<template>
	<div class="modal" :class="openmodal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">Add New Entry</p>
				<button class="delete" aria-label="close" @click='close'></button>
			</header>
			<section class="modal-card-body">
				<div class="field">
					<label class="label">Name</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.course_name">
					</div>
					<small v-if="errors.course_name" class="has-text-danger">{{ errors.course_name[0] }}</small>
					<label class="label">Abbreviation</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Abbreviation" v-model="list.abbre">
					</div>
					<small v-if="errors.course_name" class="has-text-danger">{{ errors.course_name[0] }}</small>
					<label class="label">Department</label>
					<div class="select">
						<select v-model="list.department_id">
							<option v-for="dep,key in dept" v-bind:value="dep.department_id">{{ dep.name }}</option>
						</select>
						
					</div>
					<small v-if="errors.abbre" class="has-text-danger">{{ errors.abbre[0] }}</small>
				</div>
				
	
			</section>
			<footer class="modal-card-foot">
				<button class="button is-success" @click='save'>Save</button>
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
				department_id: ''
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
		save(){
			axios.post('/course/store', this.$data.list).then((response)=> {
				this.close();

				this.$parent.lists.push(response.data[0])
				this.$parent.lists.sort(function(a,b){
						if (a.name > b.name) {
							return 1;
						}else if(a.name < b.name){
							return -1;
						}
					})
					this.list = {}
			})
			.catch((error) => this.errors = error.response.data.errors)

		}
	}	
}
</script>