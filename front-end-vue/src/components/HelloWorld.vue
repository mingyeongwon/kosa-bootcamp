<template>
  <div class="card">
    <div class="card-header">HelloWorld</div>
    <div class="card-body">
      <h4>{{ msg }}</h4>
      <hr/>
      <span>ui component 입니다.</span>     
    </div>
  </div>
</template>

<script setup>
  import {defineProps} from "vue";
  const props = defineProps(['msg']);
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
span {
  color: green
}
</style>
