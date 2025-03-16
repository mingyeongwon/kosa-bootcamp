<template>
  <div class="card">
    <div class="card-header">Child</div>
    <div class="card-body">
        <div>
        <h6>[자식 -> 부모]</h6>
            <button class="btn btn-info btn-sm me-2" @click="emit('child-event-1', data1)">child-event-1 이벤트 발생</button>
            <button class="btn btn-info btn-sm" @click="handleChildEvent2">child-event-2 이벤트 발생</button>
        </div>
        <div class="mt-3">
        <h6>[자식 -> 부모 -> 자식]</h6>
            <button class="btn btn-info btn-sm me-2" @click="handleIncrementEvent">증가 (increment-event 이벤트 발생)</button>
            <button class="btn btn-info btn-sm" @click="handleDecrementEvent">감소 (decrement-event 이벤트 발생)</button>
            <p class="mt-2">counter: {{ prop.counter }}</p>
        </div>
        
    </div>
  </div>
</template>

<script setup>
import {ref} from 'vue';

let data1 = ref("value1");
let data2 = ref(100);

const emit = defineEmits(["child-event-1", "child-event-2", "increment-event", "decrement-event"]);

function handleChildEvent2() {
    emit("child-event-2", data1.value, data2.value);
}

function handleIncrementEvent() {
    // 자식 -> 부모
    emit("increment-event", 1);
}

function handleDecrementEvent() {
    // 자식 -> 부모
    emit("decrement-event", 1);
}

const prop = defineProps(["counter"]);

</script>

<style scoped>
</style>