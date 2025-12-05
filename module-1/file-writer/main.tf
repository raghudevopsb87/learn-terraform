variable "sum" {}

resource "local_file" "foo" {
  content  = "Sum = ${var.sum}"
  filename = "/tmp/a.out"
}




