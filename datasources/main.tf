data "aws_ami" "example" {
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
  owners = ["973714476881"]
}

data "aws_security_group" "selected" {

  filter {
    name   = "name"
    values = ["allow-all"]
  }

}


output "ami" {
  value = data.aws_ami.example
}

provider "aws" {
  region = "us-east-1"
}

output "sg" {
  value = data.aws_security_group.selected
}