variable "image" {
  type        = map(any)
  description = "image for container"
  default = {
    dev  = "nodered/node-red:latest"
    prod = "nodered/node-red:latest-minimal"
  }
}

variable "int_port" {
  type    = number
  default = 1880
}

variable "ext_port" {
  type = map(any)

  validation {
    condition     = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) >= 1980
    error_message = "The external port must be in the valid port range 0 - 65535."
  }
  validation {
    condition     = max(var.ext_port["prod"]...) < 1980 && min(var.ext_port["prod"]...) >= 1880
    error_message = "The external port must be in the valid port range 0 - 65535."
  }
}
