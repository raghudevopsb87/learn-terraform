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

# List
variable "availability_zones" {
  type 	= list
  default  	= [ "val1", "val2", "val3" ]
}

output "availability_zones" {
  value = var.availability_zones[0]
}

# Map

variable "image_ids" {
  type 	= map
  default 	= {
    a = 100,
    b = "xyz"
  }
}

output "image_ids" {
  value = var.image_ids["a"]
}

# Not having a default values

variable "input_value1" {
  type = number
}

variable "input_value2" {}

