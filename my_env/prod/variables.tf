variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "project" {
  type    = string
  default = "myapp"
}

variable "s3_bucket_name" {
  type    = string
  default = "myapp-prod-bucket"
}

variable "ec2_instance_count" {
  type    = number
  default = 3
}

variable "ec2_instance_type" {
  type    = string
  default = "t3.medium"
}
