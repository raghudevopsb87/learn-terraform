resource "aws_instance" "web" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"

  tags = {
    Name = "test"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z057881017RC0RRKVUX8E"
  name    = "test"
  type    = "A"
  ttl     = 300
  records = [aws_instance.web.private_ip]
}


