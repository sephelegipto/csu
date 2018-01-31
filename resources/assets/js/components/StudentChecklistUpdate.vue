<template>
	<div class="modal" :class="openmodal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">Update {{ list.name }}'s Details</p>
				<button class="delete" aria-label="close" @click='close'></button>
			</header>
			<section class="modal-card-body">
				<div class="field">
					<label class="label">Grade</label>
					<div class="control">
						<input class="input" :class="{'is-danger':errors.name}" type="text" placeholder="Name" v-model="list.grade">
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
		methods:{
			close(){
				this.$emit('closeRequest');
			},
			update(){
				axios.post('/student/updateGrade', this.$data.list ).then((response)=> {
					this.close()
			
					
				})
				.catch((error) => this.errors = error.response.data.errors)
				
			}
		}	
	}
</script>