variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "project" {
  type    = string
  default = "myapp"
}

variable "s3_bucket_name" {
  type    = string
  default = "myapp-dev-bucket"
}

variable "ec2_instance_count" {
  type    = number
  default = 1
}

variable "ec2_instance_type" {
  type    = string
  default = "t3.micro"
}
