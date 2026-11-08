// NestJS controller example
// npm i @nestjs/common @nestjs/core reflect-metadata rxjs
import { Controller, Get } from "@nestjs/common";

@Controller()
export class AppController {
  @Get()
  getHello(): string {
    return "Hello from NestJS!";
  }

  @Get("users/:id")
  getUser(id: string) {
    return { id, name: `User ${id}` };
  }
}
