<template>
    <div class="card">
        <div class="card-header">Exam07IfShowBinding</div>
        <div class="card-body">
            <div id="div1" v-if="isPhoto" class="mb-2">
                <img src="/images/image/main.png" height="150">
            </div>
            <div id="div2" v-show="isPhoto">
                <img src="/images/image/put.jpg" height="150">
            </div>

            <hr>

            <button @click="changeData" class="btn btn-info btn-sm">상태 변수값 변경</button>
        </div>
    </div>
</template>

<script setup>
import { ref } from 'vue';

let isPhoto = ref(true);

function changeData() {
    isPhoto.value = !isPhoto.value;
}
</script>

<style scoped>
</style>
