<template>
    <div class="card">
        <div class="card-header">Exam05AttrBinding</div>
        <div class="card-body">
            <div class="mb-4">
                <h5>:속성="변수"</h5>
                <a :href="vueHome" class="me-3">뷰 홈페이지</a>
                <router-link :to="appHome">홈페이지</router-link>
            </div>
            <div class="mb-4">
                <h5>:속성="연산식" | `매개변수화된 문자열`</h5>
                <img :src="'/images/image/' + imgName" height="150" class="me-2">
                <img :src="`/images/image/${imgName}`" height="150" class="me-2">
            </div>
            <div class="mb-4">
                <h5>:class="변수 | 객체 | 배열"</h5>
                <div class="mb-3 fw-bold text-info">아름다운 풍경</div>
                <div class="mb-3" :class="className1">아름다운 풍경</div>
                <div class="mb-3" :class="[className1, className2]">아름다운 풍경</div>
                <div class="mb-3" :class="{'fw-bold':isBold, 'text-danger':isRed}">아름다운 풍경</div>
            </div>
            <div class="mb-4">
                <h5>:style="변수 | 객체 | 배열"</h5>
                <div style="margin-bottom: 10px; font-weight: bold;">아름다운 풍경</div>
                <div style="margin-bottom: 10px;" :style="[style1, style2]">아름다운 풍경</div>
                <div style="margin-bottom: 10px;" :style="{'font-weight':fontWeight, 'color':textColor}">아름다운 풍경</div>
            </div>

            <hr>

            <button class="btn btn-info btn-sm" @:click="changeData">상태 변수값 변경</button>

        </div>
    </div>
</template>

<script setup>
    import { ref } from 'vue';

    let vueHome = ref("https://vuejs.org");
    let appHome = ref("/");
    let imgName = ref("main.png");
    let className1 = ref("fw-bold");
    let className2 = ref("text-danger");
    let isBold = ref(false);
    let isRed = ref(true);

    let style1 = ref("margin-bottom:10px");
    let style2 = ref("color: green");
    let fontWeight = ref("bold");
    let textColor = ref("green");

    let toggle = ref(true);
    function changeData() {
        if(toggle.value) {
            imgName.value = "put.jpg";
            className1.value = "text-warning";
            fontWeight.value = "";
            textColor.value = "#0000ff";
        } else {
            imgName.value = "main.png";
            className1.value = "text-danger";
            fontWeight.value = "";
            textColor.value = "#00ff00";
        }
        toggle.value = !toggle.value;
    }
</script>

<style scoped>
</style>
