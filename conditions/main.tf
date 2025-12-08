resource "aws_instance" "web" {
  count         = var.create_ec2 ? 1 : 0
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.env == "prod" ? "t3.mall" : "t3.micro"

  tags = {
    Name = "test"
  }
}


variable "create_ec2" {
  default = false
}

variable "env" {
  default = "prod"
}

