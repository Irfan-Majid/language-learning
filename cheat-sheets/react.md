# React Cheat Sheet

```jsx
// Component
function Counter() {
  const [count, setCount] = useState(0);
  return <button onClick={() => setCount(c => c + 1)}>{count}</button>;
}

// useEffect
useEffect(() => {
  fetchData();
  return () => cleanup();  // unmount
}, [dependency]);

// Conditional & lists
{isLoggedIn && <Dashboard />}
{items.map(item => <li key={item.id}>{item.name}</li>)}

// Props
function Greet({ name, children }) {
  return <h1>Hello {name}{children}</h1>;
}

// Context
const ThemeContext = createContext("light");
const theme = useContext(ThemeContext);

// Forms (controlled)
const [text, setText] = useState("");
<input value={text} onChange={e => setText(e.target.value)} />

// Custom hook
function useWindowWidth() {
  const [w, setW] = useState(window.innerWidth);
  useEffect(() => {
    const fn = () => setW(window.innerWidth);
    window.addEventListener("resize", fn);
    return () => window.removeEventListener("resize", fn);
  }, []);
  return w;
}
```

**Examples:** [frameworks/react/examples/](../frameworks/react/examples/)
