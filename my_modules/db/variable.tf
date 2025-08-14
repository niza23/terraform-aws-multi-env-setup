variable "my_env" {
  type        = string
  description = "Environment name (e.g., dev, staging, prod)"
}

variable "tags" {
  type    = map(string)
  default = {}
}
