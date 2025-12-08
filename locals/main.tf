variable "dummy" {
  default = {
    apple = {
      price = 100
    }
    banana = {
      price = 200
    }
    citrus = {
      price = 300
    }
  }
}

locals {
  prices = {for x,y in var.dummy : x => y.price}
}

output "mmap" {
  value = local.prices
}

