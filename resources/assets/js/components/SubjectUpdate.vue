<template>
	<div class="modal" :class="openmodal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">Update {{ list.descriptive_title }}'s</p>
				<button class="delete" aria-label="close" @click='close'></button>
			</header>
			<section class="modal-card-body">
				<div class="field">
					
					<small v-if="errors.abbre" class="has-text-danger">{{ errors.abbre[0] }}</small>
					<label class="label">Subject Code</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Subject Code" v-model="list.subject_code">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Descriptive Title</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Descriptive Title" v-model="list.descriptive_title">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Prerequisite</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Prerequisite" v-model="list.prerequisite">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Units</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Units" v-model="list.units">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Lecture Hours</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Lecture Hours" v-model="list.lec_hours">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Lab Hours</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Lab Hours" v-model="list.lab_hours">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Contact Hours</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Contact Hours" v-model="list.contact_hours">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>	
				

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
				subject_id: '',
				dept_name:''
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
		update(){
			axios.patch(`/subject/${this.list.subject_id}`, this.$data.list).then((response)=> {

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