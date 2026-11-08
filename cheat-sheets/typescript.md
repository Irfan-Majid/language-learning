# TypeScript Cheat Sheet

```typescript
// Primitives
let s: string = "hi";
let n: number = 42;
let b: boolean = true;

// Arrays & tuples
let arr: number[] = [1, 2];
let pair: [string, number] = ["age", 30];

// Interface & type
interface User { id: number; name: string; email?: string; }
type ID = string | number;

// Functions
function add(a: number, b: number): number { return a + b; }
const mul = (a: number, b: number): number => a * b;

// Generics
function first<T>(arr: T[]): T | undefined { return arr[0]; }

// Union narrowing
function print(id: string | number) {
  if (typeof id === "string") console.log(id.toUpperCase());
}

// Utility types
type PartialUser = Partial<User>;
type UserName = Pick<User, "name">;

// Enums
enum Status { Active, Inactive }

// async
async function load(): Promise<User[]> {
  const res = await fetch("/api/users");
  return res.json();
}
```

**Examples:** [languages/typescript/examples/](../languages/typescript/examples/)
