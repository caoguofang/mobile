<template>
  <div id="app">
    <router-view/>
    <FooT></FooT>
  </div>
</template>

<script>
  import FooT from './components/subcomponents/footer';
  export default {
    data:function(){
      return {}
    },
    methods: {
    },
    components:{
      FooT
    }
  }
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
