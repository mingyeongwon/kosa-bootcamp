<template>
<div class="card" :id="$attrs.id">
    <div class="card-header">UIComponentB</div>
    <div class="card-body">
        <div class="mb-2" :class="$attrs.class" :style="$attrs.style" @click="$attrs.onClick">
            content
        </div>
        
        <hr>

        <button class="btn btn-info btn-sm me-2" @click="handleBtn1">버튼1 (속성값 이용)</button>
        <button class="btn btn-info btn-sm" @click="handleBtn2">버튼2 (리스너 호출)</button>
    </div>
</div>
</template>

<script setup>
import {defineOptions, useAttrs} from "vue";
defineOptions({
    //Fallthrough 비활성화시킨다
    inheritAttrs : false
});

const attrs = useAttrs();

function handleBtn1() {
    // 속성으로 전달된 값 얻기
    console.log(attrs.id);
    console.log(attrs.class);
    console.log(attrs.style);
}

function handleBtn2() {
    // 속성으로 전달된 핸들러 함수 (리스너) 호출
    attrs.onClick();
}
</script>

<style scoped>
</style>
