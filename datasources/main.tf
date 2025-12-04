data "aws_ami" "example" {
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
  owners = ["973714476881"]
}



output "ami" {
  value = data.aws_ami.example
}

provider "aws" {
  region = "us-east-1"
}