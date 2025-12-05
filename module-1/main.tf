module "calculator" {
  source = "./calculator"
  a = var.a
  b = var.b
}


variable "a" {
  default = 10
}

variable "b" {
  default = 20
}

