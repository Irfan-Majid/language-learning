# Beginner Guide - Nuxt.js

**Time:** 2-3 weeks | **Prerequisites:** [Vue](../vue/01-beginner/), [JavaScript](../../languages/javascript/01-beginner/)

## Step 1: Create project
```bash
npx nuxi@latest init my-nuxt-app
cd my-nuxt-app
npm install
npm run dev
```

## Step 2: File-based routing
```
pages/index.vue    -> /
pages/about.vue    -> /about
```

See [examples/page.vue](../examples/page.vue)

## Step 3: Core concepts
- `<script setup>` composition API
- `useFetch()` for data
- `nuxt.config.ts` configuration
- Server routes in `server/api/`

## Practice
1. About page with static content
2. Dynamic route `pages/users/[id].vue`
3. API route returning JSON

-> [02-fundamentals/](../02-fundamentals/)
