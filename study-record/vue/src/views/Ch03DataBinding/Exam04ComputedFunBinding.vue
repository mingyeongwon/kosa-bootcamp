<template>
    <div class="card">
        <div class="card-header">Exam04ComputedFunBinding</div>
        <div class="card-body">
            <p>이름 : {{ name }}</p>
            <p>주민번호: {{ getSsn() }}</p>
            <p>주민번호: {{ computedSsn }}</p>
            <hr>
            <button class="btn btn-danger btn-sm me-2" @click="changeName">이름 수정</button>
            <button class="btn btn-danger btn-sm" @click="changeSsn">주민번호 수정</button>
        </div>
    </div>
</template>

<script setup>
import {computed, ref} from "vue";

// 상태 선언
const name = ref("홍길동");
const ssn1 = ref("123456");
const ssn2 = ref("1234567");

// 일반 함수 (컴포넌트가 리렌더링 될 때마다 호출)
function getSsn() {
    console.log("getSsn() 실행");
    const ssn = `${ssn1.value} - ${ssn2.value.charAt(0)}******`;
    return ssn;
}

// 계산된 함수 (컴포넌트가 리렌더링되더라도 ssn1과 ssn2의 값 변경이 없을경우 호출 안 됨 )
const computedSsn = computed(() => {
    console.log("computedSsn() 실행");
    const ssn = `${ssn1.value} - ${ssn2.value}`;
    return ssn;
})

// 상태 변경 함수
function changeName() {
    name.value += "동";
}

function changeSsn() {
    ssn2.value = (parseInt(Math.random() * 10) + 1) + "234567";
}



</script>

<style scoped>
</style>
