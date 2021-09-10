locals {
  container_count = length(lookup(var.ext_port, terraform.workspace))
}