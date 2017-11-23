<template>
	<div class="modal" :class="openmodal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">Update {{ list.course_name }}'s </p>
				<button class="delete" aria-label="close" @click='close'></button>
			</header>
			<section class="modal-card-body">
				<div class="field">
					<label class="label">Course</label>
					<div class="select">
						<select v-model="list.course_name">
							<option v-for="cour,key in course" v-bind:value="cour.course_name">{{ cour.course_name }}</option>
						</select>						
					</div>
					<small v-if="errors.abbre" class="has-text-danger">{{ errors.abbre[0] }}</small>
					<label class="label">Year</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Subject Code" v-model="list.year">
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
				year:'',
				curriculum_id: '',
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
			axios.patch(`/curriculum/${this.list.curriculum_id}`, this.$data.list).then((response)=> {

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