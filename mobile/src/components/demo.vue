<template>
  <Swipe :hei="327" :wid="670" :slider="sliders"></Swipe>
</template>

<script>
  import Swipe from  './subcomponents/swipe'
  export default {
    data:function() {
      return {
        sliders: [
          {img_url: '../../../static/img/1.jpg',href:'/index'},
          {img_url: '../../../static/img/5.jpg',href:'/index'},
          {img_url: '../../../static/img/3.jpg',href:'/index'},
          {img_url: '../../../static/img/4.jpg',href:'/index'},
          {img_url: '../../../static/img/5.jpg',href:'/index'}
        ]
      }
    },
    components:{
      Swipe
    }
  }
</script>

<style scoped>

</style>