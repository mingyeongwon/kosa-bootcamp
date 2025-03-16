<template>
  <div class="card">
    <div class="card-header">Exam02EventEmit</div>
    <div class="card-body">
        <Child @child-event-1="handleChildEvent1"
        @child-event-2="handleChildEvent2"
        @increment-event="handleIncrementEvent"
        @decrement-event="handleDecrementEvent"
        :counter="counter"/>
    
      </div>
  </div>
</template>

<script setup>
import {ref} from 'vue';

import Child from './Child.vue';

function handleChildEvent1(data) {
    console.log("handleChildEvent1() 실행");
    console.log("data: : ", data);
}

function handleChildEvent2(arg1, arg2) {
  console.log("arg1: ", arg1);
  console.log("arg2: ", arg2);
}

const counter = ref(0);

function handleIncrementEvent(amount) {
  counter.value += amount;
}

function handleDecrementEvent(amount) {
  counter.value -= amount;
}


</script>

<style scoped>
</style>