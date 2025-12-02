variable "env" {
  type  	= string
  default 	= "abc"
}

output "env" {
  value = var.env
}

