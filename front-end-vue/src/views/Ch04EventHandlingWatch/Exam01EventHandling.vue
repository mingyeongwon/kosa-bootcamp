<template>
<div class="card">
    <div class="card-header">Exam01EventHandling</div>
    <div class="card-body">
        <div class="mb-3">
            <h6>[이벤트 처리]</h6>
            <button class="btn btn-danger btn-sm me-2" @click="handleBtn1">버튼1</button>
            <button class="btn btn-danger btn-sm me-2" @click="handleBtn2('vue is good', $event)">버튼2</button>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">아이디</span>
            <input class="form-control" type="text" name="userID" :value="userID" @keyup="handleInput($event)"/>
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">아이디</span>
            <input class="form-control" type="text" name="userID" v-model="userID"/>
        </div>

        <div>입력내용: {{ userID }}</div>

        <hr>

        <div>
            <h6>[이벤트 수식어 사용]</h6>
            <a @click.prevent="handleLink" >링크로 자바스크립트 실행</a>

            <form class="my-3" @submit.prevent="handleForm">
                <div class="input-group mb-3">
                    <span class="input-group-text">이메일</span>
                    <input type="email" class="form-control" v-model="userEmail">
                </div>
                <div>입력내용: {{ userEmail }}</div>
                <input type="submit" value="제출" class="btn btn-success btn-sm mt-2" />
            </form>
        </div>

    </div>
</div>
</template>

<script setup>
import { ref } from 'vue';

function handleBtn1() {
    console.log("handleBtn1() 실행")
}

function handleBtn2(arg, event) {
    console.log("handleBtn2() 실행");
    console.log("arg:" + arg);
    console.log("event.target:", event.target);
}

let userID = ref("");
let userEmail = ref("");

function handleInput(event) {
    console.log("event.target.name : " + event.target.name);
    console.log("event.target.value : " + event.target.value);
    userID.value =  event.target.value;
} 

function handleLink() {
    console.log("handleLink() 실행")
}

function handleForm() {
    console.log(userEmail.value);
}
</script>

<style scoped>
</style>
