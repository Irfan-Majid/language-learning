# Terraform example - provision a local file (no cloud account needed)
# terraform init && terraform plan && terraform apply

terraform {
  required_version = ">= 1.0"
}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = "Hello from Terraform!"
}

output "message" {
  value = local_file.hello.content
}
