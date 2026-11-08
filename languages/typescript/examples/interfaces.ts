interface User {
  id: number;
  name: string;
  email: string;
}

function formatUser(user: User): string {
  return `${user.name} <${user.email}>`;
}

const user: User = { id: 1, name: "Alice", email: "alice@example.com" };
console.log(formatUser(user));
