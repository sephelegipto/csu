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
					<label class="label">Course</label>
					<div class="select">
						<select v-model="list.course_name">
							<option v-for="cour,key in course" v-bind:value="cour.course_name">{{ cour.course_name }}</option>
						</select>						
					</div>
					<label class="label">Year</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Year" v-model="list.name">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					
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
				name:'',
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
			axios.post('/curriculum/store', this.$data.list).then((response)=> {
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