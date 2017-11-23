<template>
    <div>

        <nav class="panel column is-offset-2 is-8" >

          <p class="panel-heading">
            Curriculum 
            <button class="button is-primary is-outlined" @click="openAdd">
              Add New
          </button>
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
<a class="panel-block">
    <span class="column is-5">
        Course
    </span>
    <span class="column is-2">
        Year
    </span>




</a>
<a class="panel-block " v-for="item,key in temp">
    <span class="column is-5">
        {{ item.course_name }}
    </span>
    <span class="column is-2">
        {{ item.year }}
    </span>



    <span class="panel-icon column is-1">
      <i class="has-text-danger fa fa-trash" aria-hidden="true" @click="del(key,item.curriculum_id)"></i>
  </span>
  <span class="panel-icon column is-1">
      <i class="has-text-info fa fa-edit" aria-hidden="true" @click="openUpdate(key)"></i>
  </span>
  <span class="panel-icon column is-1">
      <i class="has-text-primary fa fa-eye" aria-hidden="true" @click="openShow(key)"></i>
  </span>
  <router-link :to="{ path: '/curriculumsubject/' + item.curriculum_id + '/'+ item.course_name + '/'+ item.year}"       class="navbar-item">
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
let Add = require('./CurriculumAdd.vue');
let Show = require('./CurriculumShow.vue');
let Update = require('./CurriculumUpdate.vue');
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
            course:''
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
            axios.post('/curriculum/getData')
            .then((response)=> this.lists = this.temp = response.data)
            .catch((error) => this.errors = error.response.data.errors),
            axios.post('/course/getData')
            .then((response)=>  this.course = response.data)
            .catch((error) => this.errors = error.response.data.errors)
        },
        methods:{
            openAdd(){
                this.$children[0].course = this.course
                this.addActive = 'is-active';
            },
            openShow(key){
                this.$children[1].list = this.temp[key]
                this.showActive = 'is-active';
            },
            openUpdate(key){
                this.$children[2].course = this.course
                this.$children[2].list = this.temp[key]
                this.updateActive = 'is-active';
            },
            close(){
                this.addActive = this.showActive = this.updateActive = ''
            },
            del(key,curriculum_id){
                if (confirm("Are you sure ?")) {
                    this.loading = !this.loading
                    axios.delete(`/curriculum/${curriculum_id}`)
                    .then((response)=> {this.lists.splice(key,1);this.loading = !this.loading})
                    .catch((error) => this.errors = error.response.data.errors) 
                }
                console.log(`${key} ${curriculum_id}`)
            }
        }
    }
    </script>