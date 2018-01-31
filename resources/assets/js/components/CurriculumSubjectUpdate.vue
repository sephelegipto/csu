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
					<label class="label">Lec Units</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="number" placeholder="Lec Units" v-model="list.lec_units">
					</div>
					<small v-if="errors.name" class="has-text-danger">{{ errors.name[0] }}</small>
					<label class="label">Lab Units</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="number" placeholder="Lab Units" v-model="list.lab_units">
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
			list:{},
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
	update(){
		axios.patch(`/curriculumsubject/${this.list.curriculumsubject_id}`, this.$data.list).then((response)=> {

			this.close()
		})
		.catch((error) => this.errors = error.response.data.errors)

	}
}	
}
</script>