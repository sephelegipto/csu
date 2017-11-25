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
					<label class="label">Units</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Units" v-model="list.units">
					</div>
					
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
				subject_code:'',
				descriptive_title: '',
				prerequisite:'',
				units:'',
				lec_hours:'',
				lab_hours:'',
				contact_hours:'',
				course_id: this.$route.params.id
			},
			course_id:'',
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

			axios.post('/subject/store', this.$data.list).then((response)=> {
				console.log(response.data)
				this.close();

				this.$parent.lists.unshift(response.data[0])
				
				this.list = {
					subject_code:'',
					descriptive_title: '',
					prerequisite:'',
					units:'',
					lec_hours:'',
					lab_hours:'',
					course_name:response.data[0].course_name
									}
			})
			.catch((error) => this.errors = error.response.data.errors)

		}
	}	
}
</script>