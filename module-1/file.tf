module "file-writer" {
  source = "./file-writer"
  sum = module.calculator.sum
}
