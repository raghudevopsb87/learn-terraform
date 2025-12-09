data "aws_ami" "example" {
  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }
  owners = ["973714476881"]
}

data "aws_security_group" "selected" {

  filter {
    name   = "group-name"
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

resource "aws_instance" "sample" {
  ami                    = data.aws_ami.example.image_id
  instance_type          = "t3.small"
  vpc_security_group_ids = [data.aws_security_group.selected.id]
}

