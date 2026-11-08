<!-- examples/Hello.vue - Vue 3 single-file component -->
<script setup>
import { ref } from "vue";
const count = ref(0);
const name = "Vue";
</script>

<template>
  <h1>Hello, {{ name }}!</h1>
  <button @click="count++">Count: {{ count }}</button>
</template>
