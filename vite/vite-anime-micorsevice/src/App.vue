<script setup>


</script>

<template>
  <div id="app">
<!--    <img src="./assets/logo.png">-->
    <router-view/>
  </div>
  
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}

.app{
  * {
    margin: 0;
    padding: 0;
    font-family: Microsoft Yahei,Tahoma,Helvetica,Arial,"\5B8B\4F53",sans-serif;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
}
}
</style>
