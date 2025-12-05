module "calculator" {
  source = "./calculator"
  a = var.a
  b = var.b
}
module "file-writer" {
  source = "./file-writer"
  sum = module.calculator.sum
}


variable "a" {
  default = 10
}

variable "b" {
  default = 20
}

