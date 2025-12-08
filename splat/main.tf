variable "ports" {
  default = {
    ssh = 22
    web = 8080
    mon = 9090
  }
}

variable "dummy" {
  default = [20,100,200]
}

output "list" {
  value = [for x,y in var.ports : y]
}

output "mmap" {
  value = {for x in var.dummy : "x" => x}
}

