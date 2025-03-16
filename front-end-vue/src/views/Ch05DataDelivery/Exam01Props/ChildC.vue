<template>
  <div class="card">
    <div class="card-header">ChildC</div>
    <div class="card-body">
      <p>propA: {{ propA }}</p>
      <p>propB: {{ propB }}</p>
      <p>propC: {{ propC }}</p>
      <p>propD: {{ propD }}</p>
      <p>propE: {{ propE }}</p>
      <p>propF: {{ propF.message }}</p>
      <p>propG: {{ propG[0] }}, {{ propG[1] }}</p>
      <p>propI: {{ propI }}</p>

    </div>
  </div>
</template>

<script setup>
const prop = defineProps({
  propA: String,
  propB: Number,
  propC: [String, Number],
  propD: {
    type: String,
    required: true
  },
  propE: {
    type: Number,
    default: 3
  },
  propF: {
    type: Object,
    default() {
      return {message:"Hello"};
    }
  },
  propG: {
    type: Array,
    default() {
      return ["black", "white"];
    }
  },
  propH: {
    type: Function,
    default() {
      return "기본값2";
    }
  },
  propI: {
    type: Number,
    validator(value) {
      return value > 0 && value < 11;
    }
  },
});
</script>

<style scoped></style>
