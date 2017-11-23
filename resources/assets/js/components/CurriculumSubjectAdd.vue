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
					<label class="label">Subject</label>
					<div class="select">
						<select v-model="list.subject_key">
							<option v-for="sub,key in subject" v-bind:value="key">
							{{ sub.descriptive_title }}</option>
						</select>						
					</div>							
				</div>
				

			</section>
			<footer class="modal-card-foot">
				<button class="button is-success" @click='save'>Add</button>
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
				subject_id:'',
				department_id: '',
				year:'',
				sem:'',
				course_id:'',
				subject_key: ''

			},
			subject:{

			},
			errors:{}
		}
	},
	methods:{
		close(){
			this.$emit('closeRequest');
		},
		
		save(){
			this.$data.list.subject_id = this.$data.subject[this.$data.list.subject_key].subject_id;
			axios.post('/curriculumsubject/store', this.$data.list).then((response)=> {
				console.log(response);
				
				this.close();
				this.$parent.lists.push(response.data[0])
				
				this.subject.splice(this.list.subject_key,1);
				this.list = {}
			})
			.catch((error) => this.errors = error.response.data.errors)

		}
	}	
}
</script>