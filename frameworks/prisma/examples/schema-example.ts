// schema.prisma
// datasource db { provider = "postgresql" url = env("DATABASE_URL") }
// generator client { provider = "prisma-client-js" }
// model User {
//   id    Int    @id @default(autoincrement())
//   email String @unique
//   name  String?
// }

// app.ts - npx prisma generate && npx prisma db push
import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

async function main() {
  const user = await prisma.user.create({
    data: { email: "alice@example.com", name: "Alice" },
  });
  console.log(user);
  const all = await prisma.user.findMany();
  console.log(all);
}

main().finally(() => prisma.$disconnect());
