<!-- Svelte component -->
<script>
  let count = 0;
  const name = "Svelte";
</script>

<h1>Hello, {name}!</h1>
<button on:click={() => count++}>Count: {count}</button>
