<template>
  <div class="card">
    <div class="card-header">Exam01LifecycleHook</div>
    <div class="card-body">
        <MountHook/>
        <UpdateHook/>
    </div>
  </div>
</template>

<script setup>
import MountHook from './MountHook.vue';
import UpdateHook from './UpdateHook.vue';

</script>

<style scoped>
</style>