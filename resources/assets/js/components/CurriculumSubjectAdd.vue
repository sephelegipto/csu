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
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Prerequisite</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Prerequisite" v-model="list.prerequisite">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Units</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="number" placeholder="Units" v-model="list.units">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Lecture Hours</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="number" placeholder="Lecture Hours" v-model="list.lec_hours">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Lab Hours</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="number" placeholder="Lab Hours" v-model="list.lab_hours">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Contact Hours</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="number" placeholder="Contact Hours" disabled :value="computeTotal">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>						
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
				prerequisite:'',
				units:'',
				lec_hours:'',
				lab_hours:'',
				contact_hours:''

			},
			subject:{

			},
			errors:{}
		}
	},
	computed: {
    // a computed getter
    computeTotal: function () {
      // `this` points to the vm instance
            this.list.contact_hours = Number(this.list.lab_hours) + Number(this.list.lec_hours);

      return Number(this.list.lab_hours) + Number(this.list.lec_hours);
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