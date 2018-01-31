<template>
	<div>
		<div class="container column is-11">
			<div class="column is-11">
				<strong class="is-pulled-right"> {{ this.$route.params.name }} </strong>
				<span class="is-pulled-right" v-if="loading">
					<i class="fa fa-refresh fa-spin fa-2x fa-fw"></i>
				</span>
			</div>
			<div class="column is-11">
				<div class="tabs is-medium">
					<div class="control">
						<button class="button" v-for="(tab, index) in tabs" :class="{active : currentTab === index }" @click="currentTab = index">{{tab}}</button>
					</div>



				</div>
			</div>

			<div class="column is-11" v-show="currentTab === 0">
				<h3>First Year - <strong>1st Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(1,1)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(1,1) }}</th>
							<th>{{ calculateLecHours(1,1) }}</th>
							<th>{{ calculateLabHours(1,1) }}</th>
							<th>{{ calculateContactHours(1,1) }}</th>
							<th>{{ calculateLecUnits(1,1) }}</th>
							<th>{{ calculateLabUnits(1,1) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 1 && item.sem == 1">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
				<h3>First Year - <strong>2nd Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(1,2)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(1,2) }}</th>
							<th>{{ calculateLecHours(1,2) }}</th>
							<th>{{ calculateLabHours(1,2) }}</th>
							<th>{{ calculateContactHours(1,2) }}</th>
							<th>{{ calculateLecUnits(1,2) }}</th>
							<th>{{ calculateLabUnits(1,2) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 1 && item.sem == 2">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="column is-11" v-show="currentTab === 1">
				<h3>Second Year - <strong>1st Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(2,1)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(2,1) }}</th>
							<th>{{ calculateLecHours(2,1) }}</th>
							<th>{{ calculateLabHours(2,1) }}</th>
							<th>{{ calculateContactHours(2,1) }}</th>
							<th>{{ calculateLecUnits(2,1) }}</th>
							<th>{{ calculateLabUnits(2,1) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 2 && item.sem == 1">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
				<h3>Second Year - <strong>2nd Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(2,2)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(2,2) }}</th>
							<th>{{ calculateLecHours(2,2) }}</th>
							<th>{{ calculateLabHours(2,2) }}</th>
							<th>{{ calculateContactHours(2,2) }}</th>
							<th>{{ calculateLecUnits(2,2) }}</th>
							<th>{{ calculateLabUnits(2,2) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 2 && item.sem == 2">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="column is-11" v-show="currentTab === 2">
				<h3>Third Year - <strong>1st Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(3,1)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(3,1) }}</th>
							<th>{{ calculateLecHours(3,1) }}</th>
							<th>{{ calculateLabHours(3,1) }}</th>
							<th>{{ calculateContactHours(3,1) }}</th>
							<th>{{ calculateLecUnits(3,1) }}</th>
							<th>{{ calculateLabUnits(3,1) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 3 && item.sem == 1">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
				<h3>Third Year - <strong>2nd Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(3,2)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(3,2) }}</th>
							<th>{{ calculateLecHours(3,2) }}</th>
							<th>{{ calculateLabHours(3,2) }}</th>
							<th>{{ calculateContactHours(3,2) }}</th>
							<th>{{ calculateLecUnits(3,2) }}</th>
							<th>{{ calculateLabUnits(3,2) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 3 && item.sem == 2">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
			</div>
			<div class="column is-11" v-show="currentTab === 3">
				<h3>Fourth Year - <strong>1st Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(4,1)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(4,1) }}</th>
							<th>{{ calculateLecHours(4,1) }}</th>
							<th>{{ calculateLabHours(4,1) }}</th>
							<th>{{ calculateContactHours(4,1) }}</th>
							<th>{{ calculateLecUnits(4,1) }}</th>
							<th>{{ calculateLabUnits(4,1) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 4 && item.sem == 1">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
				<h3>Fourth Year - <strong>2nd Semester</strong>
					<button class="button is-primary is-outlined is-pulled-right" @click="openAdd(4,2)">
						Add New
					</button>
				</h3>
				<table class="table is-hoverable">
					<thead>

						<tr>
							<th colspan="2">Action</th>


							<th>Subject Code</th>
							<th>Descriptive Title</th>
							<th>Prerequisite</th>
							<th>Units</th>
							<th>Lec Hours</th>
							<th>Lab Hours</th>
							<th>Contact Hours</th>
							<th>Lecture Units</th>
							<th>Lab Units</th>
							<th>Grade</th>
						</tr>
						<tr>
							<th colspan="2"></th>


							<th></th>
							<th></th>
							<th></th>
							<th>{{ calculateUnits(4,2) }}</th>
							<th>{{ calculateLecHours(4,2) }}</th>
							<th>{{ calculateLabHours(4,2) }}</th>
							<th>{{ calculateContactHours(4,2) }}</th>
							<th>{{ calculateLecUnits(4,2) }}</th>
							<th>{{ calculateLabUnits(4,2) }}</th>
							<th></th>

						</tr>
					</thead>
					<tbody>
						<tr v-for="item,key in temp" v-if="item.year == 4 && item.sem == 2">
							<td>  
								<a>
									<span>
										<i class="has-text-primary fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
									</span>

								</a>
							</td>
							<td></td>
							<td @click="openUpdate(key)">{{ item.subject_code }}</td>
							<td @click="openUpdate(key)">{{ item.descriptive_title }}</td>
							<td @click="openUpdate(key)">{{ item.prerequisite }}</td>
							<td @click="openUpdate(key)">{{ item.units }}</td>
							<td @click="openUpdate(key)">{{ item.lec_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lab_hours }}</td>
							<td @click="openUpdate(key)">{{ item.contact_hours }}</td>
							<td @click="openUpdate(key)">{{ item.lec_units }}</td>
							<td @click="openUpdate(key)">{{ item.lab_units }}</td>
							<td @click="openUpdate(key)">{{ item.grade }}</td>
						</tr>

					</tbody>
				</table>
			</div>
			



		</div>

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
			temp:'',
			subjects:'',
			notes: {}
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
		},computed:{
			calculateLecHours: function(){
				return function(year,sem){		
					let total = [];

					Object.entries(this.temp).forEach(([key, val]) => {
						if(val.year == year && val.sem == sem)
							total.push(val.lec_hours)
      alert(val.lec_hours) // the value of the current key.
  });

					return total.reduce(function(total, num){ return Number(total) + Number(num) }, 0);
				}
			},
			calculateUnits: function(){
				return function(year,sem){
					let total = [];

					Object.entries(this.temp).forEach(([key, val]) => {
						if(val.year == year && val.sem == sem)
      total.push(val.units) // the value of the current key.
});

					return total.reduce(function(total, num){ return Number(total) + Number(num) }, 0);
				}
			},
			calculateLecHours: function(){
				return function(year,sem){
					let total = [];

					Object.entries(this.temp).forEach(([key, val]) => {
						if(val.year == year && val.sem == sem)
      total.push(val.lec_hours) // the value of the current key.
});

					return total.reduce(function(total, num){ return Number(total) + Number(num) }, 0);
				}
			},
			calculateLabHours: function(){
				return function(year,sem){
					let total = [];

					Object.entries(this.temp).forEach(([key, val]) => {
						if(val.year == year && val.sem == sem)
      total.push(val.lab_hours) // the value of the current key.
});

					return total.reduce(function(total, num){ return Number(total) + Number(num) }, 0);
				}
			},
			calculateContactHours: function(){
				return function(year,sem){
					let total = [];

					Object.entries(this.temp).forEach(([key, val]) => {
						if(val.year == year && val.sem == sem)
      total.push(val.contact_hours) // the value of the current key.
});

					return total.reduce(function(total, num){ return Number(total) + Number(num) }, 0);
				}
			},
			calculateLecUnits: function(){
				return function(year,sem){
					let total = [];

					Object.entries(this.temp).forEach(([key, val]) => {
						if(val.year == year && val.sem == sem)
      total.push(val.lec_units) // the value of the current key.
});

					return total.reduce(function(total, num){ return Number(total) + Number(num) }, 0);
				}
			},
			calculateLabUnits: function(){
				return function(year,sem){
					let total = [];

					Object.entries(this.temp).forEach(([key, val]) => {
						if(val.year == year && val.sem == sem)
      total.push(val.lab_units) // the value of the current key.
});

					return total.reduce(function(total, num){ return Number(total) + Number(num) }, 0);
				}
			}
		}
		,
		mounted(){
			axios.post('/studentchecklist/getData', {id : this.$route.params.id, curriculum_id : this.$route.params.curriculum_id})
			.then((response)=> this.temp = response.data)
			.catch((error) => this.errors = error.response.data.errors)
		},
		methods:{
			openAdd(year, sem){
				this.$children[0].list.year = year
				this.$children[0].list.curriculum_id = this.$route.params.id
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