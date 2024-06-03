<template>
  <div class="card">
    <div class="card-header">Exam02DomElementRef</div>
    <div class="card-body">
        <div>
            <h6>[dom 요소 참조]</h6>
            <p>data: {{ data }}</p>
            <div class="d-flex">
                <input id="input1" ref="input1Ref" type="text" style="line-height: 25px;">
                <button class="btn btn-info btn-sm ms-2" @click="setData">입력 양식값 변경 </button>
            </div>
        </div>
    </div>
  </div>
</template>

<script setup>
import {ref} from "vue";

// 상태 생성
const data = ref("summer");
const input1Ref = ref(null);

function setData() {
    // 방법 1
    // const input1 = document.querySelector("#input1");
    // data.value = input1.value;

    // 방법 2
    data.value = input1Ref.value.value;
}
</script>

<style scoped>
</style>