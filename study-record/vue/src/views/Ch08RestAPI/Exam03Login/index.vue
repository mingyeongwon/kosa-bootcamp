<template>
  <div class="card">
    <div class="card-header">Exam03Login</div>
    <div class="card-body">
      <div v-if="$store.state.userId === ''">
        <form @submit.prevent="handleLogin">
          <div class="input-group mb-2">
            <span class="input-group-text">아이디</span>
            <input type="text" class="form-control" v-model="member.mid" />
          </div>

          <div class="input-group mb-2">
            <span class="input-group-text">비밀번호</span>
            <input
              type="password"
              class="form-control"
              v-model="member.mpassword"
            />
          </div>

          <div>
            <input
              type="submit"
              value="로그인"
              class="btn btn-danger btn-sm me-2"
            />
            <!-- 체크 박스가 디폴트 값으로 바인딩 되지 않음 -->
            <!-- <input type="reset" value="재작성" class="btn btn-info btn-sm"/> -->
            <!-- Vue에서 리셋 버튼은 양식을 초기화 하지 않음 -->
            <!-- <button type="reset" class="btn btn-info btn-sm">재작성</button> -->
            <button
              type="button"
              class="btn btn-info btn-sm"
              @click="handleReset"
            >
              재작성
            </button>
          </div>
        </form>
      </div>
      <div v-else>
        <button class="btn btn-success btn-sm" @click="handleLogout">
          로그아웃
        </button>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref } from "vue";
import memberAPI from "@/apis/memberAPI";
import { useStore } from "vuex";

// store 객체 얻기
const store = useStore();

//상태 정의
const member = ref({
  mid: "",
  mpassword: "",
});

const handleLogin = async() => {
  try {
    const data = JSON.parse(JSON.stringify(member.value));
    const response = await memberAPI.login(data);
    if (response.data.result === "success") {
      const payload = {
        userId: response.data.mid,
        accessToken: response.data.accessToken,
      };
      store.dispatch("saveAuth", payload);
    }
  } catch (error) {
    console.log(error);
  }
};
const handleReset = () => {
    member.value.mid = "";
    member.value.mpassword = "";

};
const handleLogout = () => {
    store.dispatch("deleteAuth");
};
</script>

<style scoped></style>
