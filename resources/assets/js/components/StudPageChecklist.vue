<template>
	<div>
		
		<nav class="panel block" >
			<p class="panel-heading">
		Welcome {{ studDetail }}
				
				<span class="is-pulled-right" v-if="loading">
					<i class="fa fa-refresh fa-spin fa-2x fa-fw"></i>
				</span>
			</p>
			<div class="panel-block">
				<div class="tabs is-medium">
					<div class="control">
						<button class="button" v-for="(tab, index) in tabs" :class="{active : currentTab === index }" @click="currentTab = index">{{tab}}</button>
					</div>


					
				</div>
			</div>
			<div class="panel">
				<div class="container" v-show="currentTab === 0">
					<div class="notification">
						<h3>First Year - <strong>1st Semester</strong>
					
						</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 1 && item.sem == 1">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>
						
						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
					<div class="notification">
						<h3>First Year - <strong>2nd Semester</strong>
					
						</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 1 && item.sem == 2">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>


						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
				</div>
				<div class="container" v-show="currentTab === 1">
					<div class="notification">
						<h3>Second Year - <strong>1st Semester</strong>
						
						</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 2 && item.sem == 1">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>
						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
					<div class="notification">
						<h3>Second Year - <strong>2nd Semester</strong>
						
						</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 2 && item.sem == 2">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>

						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
				</div>
				<div class="container" v-show="currentTab === 2">
					<div class="notification">
						<h3>Third Year - <strong>1st Semester</strong>
						
						</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 3 && item.sem == 1">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>
						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
					<div class="notification">
						<h3>Third Year - <strong>2nd Semester</strong>
											</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 3 && item.sem == 2">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>
						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
				</div>
				<div class="container" v-show="currentTab === 3">
					<div class="notification">
						<h3>Fourth Year - <strong>1st Semester</strong>
											</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 4 && item.sem == 1">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>
						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
					<div class="notification">
						<h3>Fourth Year - <strong>2nd Semester</strong>
						</h3>
					</div>
					<a class="panel-block">
						<span class="column is-2">

							Subject Code
						</span>
						<span class="column is-3">
							Descriptive Title
						</span>
						<span class="column is-1">
							Prerequisite
						</span>
						<span class="column is-1">
							Units
						</span>
						<span class="column is-1">
							Lecture Hours
						</span>
						<span class="column is-1">
							Lab Hours
						</span>
						<span class="column is-1">
							Contact Hours
						</span>	
						<span class="column is-1">
							Grade
						</span>	
					</a>
					<a class="panel-block " v-for="item,key in temp" v-if="item.year == 4 && item.sem == 2">
						<span class="column is-2">

							{{ item.subject_code }}
						</span>
						<span class="column is-3">
							{{ item.descriptive_title }}
						</span>
						<span class="column is-1">
							{{ item.prerequisite }}
						</span>
						<span class="column is-1">
							{{ item.units }}
						</span>
						<span class="column is-1">
							{{ item.lec_hours }}
						</span>
						<span class="column is-1">
							{{ item.lab_hours }}
						</span>
						<span class="column is-1">
							{{ item.contact_hours }}
						</span>
						<span class="column is-1">
							{{ item.grade }}
						</span>
						<span class="panel-icon column is-1">
							<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
						</span>
					</a>
				</div>
			</div>



		</nav>

		<Add :openmodal='addActive' @closeRequest='close'></Add>
		<Show :openmodal='showActive' @closeRequest='close'></Show>
		<Update :openmodal='updateActive' @closeRequest='close'></Update>
	</div>
</template>

<script>
let Add = require('./CurriculumSubjectAdd.vue');
let Show = require('./CurriculumSubjectShow.vue');
let Update = require('./StudentChecklistUpdate.vue');
export default{
	name: 'tabs',
	components:{Add,Show,Update},
	data(){
		return{
			currentTab: 0,
			tabs: ['1st Year', '2nd Year', '3rd Year', '4th Year'],
			addActive : '',
			showActive : '',
			updateActive : '',
			lists:{},
			errors:{},
			loading:false,
			searchQuery:'',
			temp:{},
			subjects:'',
			zxc:{},
			studDetail:''
		}
	},
	watch:{
		searchQuery(){
			if (this.searchQuery.length > 0) {
				this.temp = this.lists.filter((item) => {
					return Object.keys(item).some((key)=>{
						let string = String(item[key]) 
						return string.toLowerCase().indexOf(this.searchQuery.toLowerCase())>-1
							// console.log(string)
						})
				});
					// console.log(result)
				}else{
					this.temp = this.lists
				}
			}
		},
		mounted(){
		
			axios.post('/studentchecklistpage/getData')
			.then((response)=> this.temp = response.data)
			.catch((error) => this.errors = error.response.data.errors)
		},
		methods:{
			openAdd(year, sem){
				this.$children[0].list.year = year
				this.$children[0].list.course_id = this.$route.params.id
				this.$children[0].list.sem = sem
				this.$children[0].subject = this.subjects
				this.addActive = 'is-active';
			},
			openShow(key){
				this.$children[1].list = this.temp[key]
				this.showActive = 'is-active';
			},
			openUpdate(key){
				this.$children[2].list = this.temp[key]
				this.updateActive = 'is-active';
			},
			close(){
				this.addActive = this.showActive = this.updateActive = ''
			},
			del(key, curriculumsubject_id){

				if (confirm("Are you sure ?")) {
					this.loading = !this.loading
					axios.delete(`/curriculumsubject/${curriculumsubject_id}`)
					.then((response)=> {
						this.subjects.push(this.lists[key])

						this.lists.splice(key,1);this.loading = !this.loading

					})
					.catch((error) => console.log(error))	
				}
				console.log(`${key} ${curriculumsubject_id}`)
			}
		}
	}
	</script>