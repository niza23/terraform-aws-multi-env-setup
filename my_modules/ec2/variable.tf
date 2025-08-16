variable "instance_count" {
  type    = number
  default = 1
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "ami_id" {
  type    = string
  default = ""
}

variable "root_volume_size" {
  type    = number
  default = 8
}

variable "name_prefix" {
  type    = string
  default = "app"
}

variable "tags" {
  type    = map(string)
  default = {}
}
