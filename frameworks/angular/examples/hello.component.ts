// Angular standalone component example
import { Component } from "@angular/core";

@Component({
  selector: "app-hello",
  standalone: true,
  template: `<h1>Hello, {{ name }}!</h1>`,
})
export class HelloComponent {
  name = "Angular";
}
