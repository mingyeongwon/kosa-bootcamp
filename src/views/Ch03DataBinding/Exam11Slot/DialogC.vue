<template>
  <DialogTemplate>
    <template v-slot:header>
        로그인
    </template>
    
    <template v-slot:body>
      <div class="mb-3">
        <label for="inputEmail" class="form-label">이메일</label>
        <input type="text" class="form-control" id="inputEmail" v-model="inputData.email">
      </div>
      <div class="mb-3">
        <label for="inputPassword" class="form-label">비밀번호</label>
        <input type="password" class="form-control" id="inputPassword" v-model="inputData.password">
      </div>
    </template>

    <template v-slot:footer>
        <button class="btn btn-warning btn-sm me-2" @click="handleLogin">로그인</button>
        <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">닫기</button>
    </template>
  </DialogTemplate>
</template>

<script setup>
import {ref} from "vue";
import DialogTemplate from "./DialogTemplate.vue";

const emit = defineEmits(["close"]);

const inputData = ref({
  email: "",
  password: ""
});

function handleLogin() {
  // 사용자가 입력한 내용을 일반 객체로 만들기
  console.log(JSON.parse(JSON.stringify(inputData.value)));
  // close 이벤트 발생시키기
  emit('close');
}

</script>

<style scoped></style>
