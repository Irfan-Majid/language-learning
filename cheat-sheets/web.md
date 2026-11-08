# HTML & CSS Cheat Sheet

```html
<!-- Semantic HTML -->
<header><nav><main><article><section><footer>
<h1>-<h6>  <p>  <a href="">  <img alt="">
<form><input type="text|email|password|submit">
<label for="id">  <button type="button">

<!-- Meta -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
```

```css
/* Selectors */
.class  #id  div p  div > p  div:hover

/* Flexbox */
.container { display: flex; justify-content: center; align-items: center; gap: 1rem; }

/* Grid */
.grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 16px; }

/* Common */
margin / padding: 1rem 2rem;   /* top-bottom left-right */
width: 100%; max-width: 1200px;
color: #333; background: #fff;
border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,.1);
font-size: 1rem; font-weight: 600;

/* Responsive */
@media (max-width: 768px) { .sidebar { display: none; } }

/* Variables */
:root { --primary: #3b82f6; }
.btn { background: var(--primary); }
```

**Examples:** [web/html-css/examples/](../web/html-css/examples/) | [web/tailwind-css/](../web/tailwind-css/)
