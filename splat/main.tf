variable "ports" {
  default = {
    ssh = 22
    web = 8080
    mon = 9090
  }
}

output "list" {
  value = [for x,y in var.ports : y]
}

