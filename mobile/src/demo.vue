<template>
  <div id="demo">
    <button v-on:click="show = !show">
    Toggle
    </button>
    <transition name="fade">
    <p v-if="show">hello</p>
    </transition>
  </div>

</template>

<script>
  new Vue({
    el: '#demo',
    data: {
    show: true
    }
  })

</script>
<style scoped>
  .fade-enter-active, .fade-leave-active {
    transition: opacity .5s
  }
  .fade-enter, .fade-leave-active {
    opacity: 0
  }

</style>
