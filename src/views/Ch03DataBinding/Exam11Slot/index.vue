<template>
<div class="card">
    <div class="card-header">Exam11Slot</div>
    <div class="card-body">
        <button class="btn btn-info btn-sm me-2" @click="showDialogA">A 다이얼로그</button>
        <button class="btn btn-info btn-sm me-2" @click="showDialogB">B 다이얼로그</button>
        <button class="btn btn-info btn-sm" @click="showDialogC">C 다이얼로그</button>
    </div>

    <DialogA id="dialogA"/>
    <DialogB id="dialogB" @close="hideDialogB"/>
    <DialogC id="dialogC" @close="hideDialogC"/>
</div>
</template>

<script setup>
import {onMounted} from "vue";
import {Modal} from "bootstrap";

import DialogA from "./DialogA.vue";
import DialogB from "./DialogB.vue";
import DialogC from "./DialogC.vue";

let modalDialogA = null;
let modalDialogB = null;
let modalDialogC = null;


// Exam11Slot 컴포넌트가 생성되고 Dom에 부착될 때 자동으로 실행되는 콜백
onMounted(() => {
    modalDialogA = new Modal(document.querySelector("#dialogA"));
    modalDialogB = new Modal(document.querySelector("#dialogB"));
    modalDialogC = new Modal(document.querySelector("#dialogC"));
});

function showDialogA() {
    modalDialogA.show();
}

function showDialogB() {
    modalDialogB.show();
}

function showDialogC() {
    modalDialogC.show();
}

function hideDialogB() {
    modalDialogB.hide();
}

function hideDialogC() {
    modalDialogC.hide();
}
</script>

<style scoped>
</style>
