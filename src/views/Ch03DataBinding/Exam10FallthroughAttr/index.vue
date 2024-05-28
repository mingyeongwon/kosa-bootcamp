<template>
<div class="card" :id="$attrs.id">
    <div class="card-header">Exam10FallthroughAttr</div>
    <div class="card-body">
        <UIComponentA id="uiComponentA" class="bg-info" style="color: orange;"
        @click="handleClick"/>

        <UIComponentB d="uiComponentB" class="bg-info" style="color: orange;"
        @click="handleClick"/>
        
        <UIComponentB d="uiComponentB" myclass="bg-warning" mystyle="color: red;"
        @click="handleClick"/>
    </div>
</div>
</template>

<script setup>
import UIComponentA from './UIComponentA.vue';
import UIComponentB from './UIComponentB.vue';

function handleClick() {
    console.log("Exam10FallthroughAttr.handleClick() 실행됨");
}
</script>

<style scoped>
</style>
