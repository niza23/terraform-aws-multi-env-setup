variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "staging"
}

variable "project" {
  type    = string
  default = "myapp"
}

variable "s3_bucket_name" {
  type    = string
  default = "myapp-staging-bucket"
}

variable "ec2_instance_count" {
  type    = number
  default = 2
}

variable "ec2_instance_type" {
  type    = string
  default = "t3.small"
}
