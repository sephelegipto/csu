<template>
    <div>
        
        <nav class="panel column is-offset-2 is-8" >
            <p class="panel-heading">
                Subjects
                
                <span class="is-pulled-right" v-if="loading">
                    <i class="fa fa-refresh fa-spin fa-2x fa-fw"></i>
                </span>
            </p>
            <div class="panel-block">
                <p class="control has-icons-left">
                    <input class="input is-small" type="text" placeholder="search" v-model="searchQuery">
                    <span class="icon is-small is-left">
                        <i class="fa fa-search"></i>
                    </span>
                </p>
            </div>
            <a class="panel-block ">
                <span class="column is-6">
                    Course
                </span>
                

                <span class="column is-4">
                    Department
                </span>
            </a>

            <a class="panel-block " v-for="item,key in temp">
                <span class="column is-6">
                    {{ item.course_name }}
                </span>
                <span class="column is-4">
                    {{ item.dept_name }}
                </span>
                 <router-link :to="{ path: '/subject/' + item.course_id + '/'+ item.course_name}"       class="navbar-item">
    <span class="panel-icon column is-1">
      <i class="has-text-primary fa fa-list-ol" aria-hidden="true" @click="openShow(key)"></i>
  </span>
</router-link>
            </a>
        </nav>

        <Add :openmodal='addActive' @closeRequest='close'></Add>
        <Show :openmodal='showActive' @closeRequest='close'></Show>
        <Update :openmodal='updateActive' @closeRequest='close'></Update>
    </div>
</template>

<script>
let Add = require('./CourseAdd.vue');
let Show = require('./Show.vue');
let Update = require('./CourseUpdate.vue');
export default{
    components:{Add,Show,Update},
    data(){
        return{
            addActive : '',
            showActive : '',
            updateActive : '',
            lists:{},
            errors:{},
            loading:false,
            searchQuery:'',
            temp:'',
            course_id:''
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
            axios.post('/course/getData')
            .then((response)=>  this.lists = this.temp = response.data)
            .catch((error) => this.errors = error.response.data.errors),
            axios.post('/department/getData')
            .then((response)=>  this.dept = response.data)
            .catch( )
        },
        methods:{
            openAdd(){
                this.$children[0].dept = this.dept
                this.addActive = 'is-active';
            },
            openShow(key){
                this.$children[1].list = this.temp[key]
                this.showActive = 'is-active';
            },
            openUpdate(key){
                this.$children[2].dept = this.dept
                this.$children[2].list = this.temp[key]
                this.updateActive = 'is-active';
            },
            close(){
                this.addActive = this.showActive = this.updateActive = ''
            },
            del(key,course_id){
                if (confirm("Are you sure ?")) {
                    this.loading = !this.loading
                    axios.delete(`/course/${course_id}`)
                    .then((response)=> {this.lists.splice(key,1);this.loading = !this.loading})
                    .catch((error) => this.errors = error.response.data.errors) 
                }
                console.log(`${key} ${course_id}`)
            }
        }
    }
    </script>