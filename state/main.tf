terraform {
  backend "s3" {
    bucket = "terraform-state-b87"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}

output "test" {
  value = "Hello"
}

