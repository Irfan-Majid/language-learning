# Beginner Guide - Svelte

**Time:** 1-2 weeks | **Prerequisites:** [JavaScript](../../languages/javascript/01-beginner/)

## Step 1: Create project
```bash
npm create svelte@latest my-app
cd my-app
npm install
npm run dev
```

## Step 2: Component anatomy
See [examples/Hello.svelte](../examples/Hello.svelte)

```svelte
<script>
  let count = 0;
</script>
<button on:click={() => count++}>Count: {count}</button>
```

## Step 3: Core concepts
- Reactive `let` variables (no useState)
- `{#if}`, `{#each}` blocks
- `on:event` handlers
- Stores for shared state

## Practice
1. Todo list with add/remove
2. Fetch JSON and display with `{#each}`
3. Form with two-way bind `bind:value`

-> [02-fundamentals/](../02-fundamentals/)
