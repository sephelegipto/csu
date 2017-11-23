<template>
	<div class="modal" :class="openmodal">
		<div class="modal-background"></div>
		<div class="modal-card">
			<header class="modal-card-head">
				<p class="modal-card-title">{{ list.descriptive_title }}'s Details</p>
				<button class="delete" aria-label="close" @click='close'></button>
			</header>
			<section class="modal-card-body">
				<li class="panel-block">
					<label class="column is-3"><b>Course</b></label> {{ list.course_name }}
				</li>
				<li class="panel-block">
					<label class="column is-3"><b>Subject Code</b></label> {{ list.subject_code }}
				</li>
				<li class="panel-block">
					<label class="column is-3"><b>Descriptive Title</b></label> {{ list.descriptive_title }}
				</li>
				<li class="panel-block">
					<label class="column is-3"><b>Prerequisite</b></label> {{ list.prerequisite }}
				</li>
				<li class="panel-block">
					<label class="column is-3"><b>Units</b></label> {{ list.units }}
				</li>
				<li class="panel-block">
					<label class="column is-3"><b>Lecture Hours</b></label> {{ list.lec_hours }}
				</li>
				<li class="panel-block">
					<label class="column is-3"><b>Lab Hours</b></label> {{ list.lab_hours }}
				</li>
				<li class="panel-block">
					<label class="column is-3"><b>Contact Hours</b></label> {{ list.contact_hours }}
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