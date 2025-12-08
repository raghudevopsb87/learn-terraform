variable "ports" {
  default = {
    ssh = 22
    web = 8080
    mon = 9090
  }
}

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

output "list" {
  value = [for x,y in var.ports : y]
}

output "mmap" {
  #value = {for x in var.dummy : "x" => x}
  value = {for x,y in var.dummy : x => y.price}
}

