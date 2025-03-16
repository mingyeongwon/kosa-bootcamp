<template>
  <div class="card">
    <div class="card-header">Exam05View</div>
    <div class="card-body">
     <RouterLink to="/Ch02ComponentRouting/Exam05View/UIComponentA" class="me-3">UIComponentA</RouterLink>
     <RouterLink to="/Ch02ComponentRouting/Exam05View/UIComponentB" class="me-3">UIComponentb</RouterLink>
     <button class="btn btn-info btn-sm" @click="changeNestedComponent()">UIComponentC</button>
     <hr>
     <!-- 중첩된 라우트의 컴포넌트가 보여질 위치 -->
     <RouterView/>
    </div>
  </div>
</template>

<script setup>
import { useRouter } from 'vue-router';
const router = useRouter();

function changeNestedComponent() {
  router.push("/Ch02ComponentRouting/Exam05View/UIComponentC");
}
</script>

<style scoped></style>
