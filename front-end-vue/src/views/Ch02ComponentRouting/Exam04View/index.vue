<template>
  <div class="card">
    <div class="card-header">Exam04View</div>
    <div class="card-body">
      <h4>태그로 화면 이동</h4>
      <p>
        <RouterLink to="/Ch02ComponentRouting/Exam01View"
          >Exam01View</RouterLink
        >
      </p>
      <p>
        <RouterLink v-bind:to="`/Ch02ComponentRouting` + `/Exam01View`"
          >Exam01View</RouterLink
        >
      </p>
      <p>
        <RouterLink :to="`/Ch02ComponentRouting` + `/Exam01View`"
          >Exam01View</RouterLink
        >
      </p>
      <p>
        <RouterLink :to="{ path: '/Ch02ComponentRouting/Exam01View' }"
          >Exam01View</RouterLink
        >
      </p>
      <p><RouterLink :to="{ name: 'Exam01View' }">Exam01View</RouterLink></p>
      <hr />

      <h4>프로그램으로 화면 이동</h4>
      <p>
        <button class="btn btn-info btn-sm" v-on:click="goUrl('Exam01View')">
          Exam01View
        </button>
      </p>
      <p>
        <button class="btn btn-info btn-sm" @click="goUrl('Exam02View')">
          Exam02View
        </button>
      </p>
    </div>
  </div>
</template>

<script setup>
import { useRouter } from "vue-router";

const router = useRouter();

function goUrl(kind) {
  router.push("/Ch02ComponentRouting/" + kind)
.then(() => {
  console.log("이동 완료");
});

}
</script>

<style scoped></style>
