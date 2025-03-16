<template>
  <div class="card">
    <div class="card-header">Exam01RootState</div>
    <div class="card-body">
      <h6>[루트 상태 읽기]</h6>
      <p>userId 단방향 바인딩 : {{ $store.state.userId }}</p>
      <p>userId 단방향 바인딩 : {{ $store.getters.getUserId }}</p>
      <p>userId 단방향 바인딩 : {{ getUserId() }}</p>
      <p>userId 단방향 바인딩 : {{ computedUserId }}</p>
      <p>
        userId 양방향 바인딩 :
        <input type="text" v-model="$store.state.userId" />
      </p>
      <hr />
      <h6>[루트 상태 변경]</h6>
      <button class="btn btn-info btn-sm me-2" @click="changeByMutation">
        userId 변경(mutation 동기 방식)
      </button>
      <button class="btn btn-info btn-sm" @click="changeByAction">
        userId 변경(action 비동기 방식)
      </button>
    </div>
  </div>
</template>

<script setup>
import { computed } from "vue";
import { useStore } from "vuex";

const store = useStore();

function getUserId() {
  // 방법 1:
  // return store.state.userId;
  // 방법 2:
  return store.getters.getUserId;
}

const computedUserId = computed(() => {
  return store.state.userId;
});

function changeByMutation() {
  new Promise((resolve, reject) => {
    // 서버와 통신 작업
    if (true) {
      // 로그인 성공 시
      resolve({ result: "success", userId: "spring" });

      // 로그인 실패 시
    } else {
      reject({ result: "fall", reason: "password is wrong" });
    }
  })
    .then((data) => {
      // 작업이 성공적으로 처리가 될 경우
      // 상태 변경 작업
      console.log("로그인 성공");
      store.commit("setUserId", data.userId);
    })
    .catch((error) => {
      // 작업이 실패 처리가 될 경우
      console.log("로그인 실패");
    });
}

function changeByAction() {
  store.dispatch("loginAction", { userId: "summer" });
}
</script>

<style scoped></style>
