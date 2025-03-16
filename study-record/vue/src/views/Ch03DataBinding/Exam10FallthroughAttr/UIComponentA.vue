<template>
<div class="card">
    <div class="card-header">UIComponentA</div>
    <div class="card-body">
        <div :class="prop.class" :style="prop.style" @click="emit('click')">
            content
        </div>

        <button class="btn btn-info btn-sm mt-2" @click="handleClick">버튼</button>
    </div>
</div>
</template>

<script setup>
const prop = defineProps(["class", "style"]);
const emit = defineEmits(["click"]);

function handleClick() {
    // 컴포넌트의 속성값 읽기
    console.log(prop.class);
    console.log(prop.style);
    // 컴포넌트의 click 이벤트 발생 
    emit('click');
}
</script>

<style scoped>
</style>
