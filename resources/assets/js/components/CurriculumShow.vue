<template>
	<div class="modal" :class="openmodal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">{{ list.course_name }}'s Details</p>
				<button class="delete" aria-label="close" @click='close'></button>
			</header>
			<section class="modal-card-body">

			
				<li class="panel-block">
					<label class="column is-2"><b>Course</b></label> {{ list.course_name }}
				</li>
				<li class="panel-block">
					<label class="column is-2"><b>Year</b></label> {{ list.year }}
				</li>
			
				
				
			</section>
			<footer class="modal-card-foot">
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
			list:''
		}
	},
	methods:{
		close(){
			this.$emit('closeRequest');
		}
	}
}
</script>