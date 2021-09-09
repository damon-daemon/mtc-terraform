variable "env" {
  type        = string
  description = "Env to deploy to"
  default     = "dev"
}

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
  type = list(any)

  validation {
    condition     = max(var.ext_port...) <= 65535 && min(var.ext_port...) > 0
    error_message = "The external port must be in the valid port range 0 - 65535."
  }
}
