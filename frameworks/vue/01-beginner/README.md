# Beginner Guide — Vue.js

**Audience:** Developers who know HTML/CSS/JavaScript  
**Time:** 2 weeks

---

## Why Vue?

- **Easiest** major framework to learn
- Great documentation
- Progressive — add to existing pages or build full SPAs

---

## Setup

```bash
npm create vue@latest my-vue-app
cd my-vue-app && npm install && npm run dev
```

---

## First Component

```vue
<!-- examples/Hello.vue -->
<script setup>
const name = "World";
</script>

<template>
  <h1>Hello, {{ name }}!</h1>
</template>
```

---

## Core Concepts

### Reactive Data
```vue
<script setup>
import { ref } from "vue";
const count = ref(0);
const increment = () => count.value++;
</script>

<template>
  <button @click="increment">Count: {{ count }}</button>
</template>
```

### Props
```vue
<script setup>
defineProps({ name: String });
</script>
<template><p>Hello, {{ name }}!</p></template>
```

### v-for, v-if
```vue
<li v-for="item in items" :key="item.id">{{ item.name }}</li>
<p v-if="isVisible">Shown when true</p>
```

---

## React vs Vue (Quick)

| React | Vue |
|-------|-----|
| `useState` | `ref()` |
| `onClick` | `@click` |
| JSX | `<template>` |
| More jobs (US) | Popular in Asia/Europe |

---

## Next → [02-fundamentals/](../02-fundamentals/)
