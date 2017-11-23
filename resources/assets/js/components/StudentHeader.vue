<template>
	<nav class="navbar" role="navigation" aria-label="main navigation">
		<div class="navbar-brand">
			<a class="navbar-item" href="#">
				<img src="" alt="Cagayan State University" width="210" height="28">
			</a>
			<div class="navbar-menu is-active">
				<!-- <router-link to="/home" class="navbar-item">Home</router-link> -->
				<router-link to="" class="navbar-item"  @click.native='logout'>Logout</router-link>
			</div>
			<div class="navbar-menu is-active">			
				
</div>

			<button class="button navbar-burger">
				<span></span>
				<span></span>
				<span></span>
			</button>
		</div>
	</nav>

</template>
<script>

    export default{
        
        methods:{
                    logout(){
 
                    axios.get('/logout')
                    .then((response)=> { window.location.href = '/'})
                    .catch((error) => this.errors = error.response.data.errors) 
             
            }
        }
    }
</script>