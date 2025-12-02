# String
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

# number
variable "instance_count" {
  type  	= number
  default 	= 100
}

# Boolean
variable "enabled" {
  type 	= bool
  default	= true
}

variable "availability_zones" {
  type 	= list
  default  	= [ "val1", "val2", "val3" ]
}

output "availability_zones" {
  value = var.availability_zones
}

