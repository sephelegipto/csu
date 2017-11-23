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
					<label class="label">ID Number</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.school_id">
					</div>
					<label class="label">Last Name</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.l_name">
					</div>
					<label class="label">First Name</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.f_name">
					</div>
					<label class="label">Middle Name</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.m_name">
					</div>
					<small v-if="errors.course_name" class="has-text-danger">{{ errors.course_name[0] }}</small>
					<label class="label">Email</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.email">
					</div>
					<label class="label">Course</label>
					<div class="select">
						<select v-model="list.course_id">
							<option v-for="cour,key in course" v-bind:value="cour.course_id">{{ cour.name }}</option>
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
			course:{

			},
			errors:{}
		}
	},
	methods:{
		close(){
			this.$emit('closeRequest');
		},
		save(){
			axios.post('/student/store', this.$data.list).then((response)=> {
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