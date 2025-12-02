variable "env" {
  type  	= string
  default 	= "abc"
}

output "env" {
  value = var.env
}

output "enva" {
  value = "${var.env}01"
}
