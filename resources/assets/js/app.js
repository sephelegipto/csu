require('./bootstrap');

window.Vue = require('vue');

import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

let Myheader = require('./components/Myheader.vue');
let Myfooter = require('./components/Myfooter.vue');

let Studentheader = require('./components/StudentHeader.vue');


let Studpagechecklist = require('./components/StudPageChecklist')
let Dashboard = require('./components/Dashboard.vue');
let Student = require('./components/Student.vue');
let Home = require('./components/Home.vue');
let About = require('./components/About.vue');
let SubjectPerCourse = require('./components/SubjectPerCourse.vue');
let Subject = require('./components/Subject.vue');
let Department = require('./components/Department.vue');
let Course = require('./components/Course.vue');
let Curriculum = require('./components/Curriculum.vue');
let CurriculumSubject = require('./components/CurriculumSubject.vue');
let StudentChecklist = require('./components/StudentChecklist.vue');

let Add = require('./components/Add.vue');

const routes = [
{ path: '/dashboard', component: Dashboard },
{ path: '/student', component: Student },
{ path: '/home', component: Home },
{ path: '/about', component: About },
{ path: '/subject', component: Subject },
{ path: '/subject/:id/:name', component: Subject },
{ path: '/department', component: Department },
{ path: '/course', component: Course },
{ path: '/department', component: Department },
{ path: '/curriculum', component: Curriculum },
{ path: '/curriculumsubject/:id/:course/:year', component: CurriculumSubject },
{ path: '/studentchecklist/:id/:curriculum_id/:name', component: StudentChecklist }
]

const router = new VueRouter({
	// mode: 'history',
  routes // short for `routes: routes`
})

const app = new Vue({
	el: '#app',
	router,
	components:{Myheader, Myfooter, Studentheader, Studpagechecklist}
});






