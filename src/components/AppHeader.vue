<template>
    <nav class="navbar justify-content-between bg-dark text-white">
        <div class="ms-2">
            <img src="@/assets/logo.png" width="30" height="30" />
            <span class="ms-2 text-white">vue.js</span>
        </div>

        <div class="me-2">
            <div v-if="$store.state.userId === ''">
                <router-link class="btn btn-success btn-sm" to="/Ch08RestAPI/Exam03Login">로그인</router-link>
            </div>
            <div v-else>
                <span>userId : {{ $store.state.userId }}</span>
                <button class="btn btn-info btn-sm ms-2" @click="handleLogout">로그아웃</button>
            </div>
        </div>
    </nav>

</template>

<script setup>
import { useRouter } from 'vue-router';
import { useStore } from 'vuex';

const store = useStore();
const router = useRouter();

function handleLogout() {
    store.dispatch("deleteAuth");
    router.push("/Ch08RestAPI/Exam03Login");
}
</script>

<style>
</style>
