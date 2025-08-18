provider "aws" {
  region = var.aws_region
}

locals {
  common_tags = {
    Environment = var.environment
    Project     = var.project
  }
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.s3_bucket_name
  versioning  = true
  tags        = local.common_tags
}

module "db" {
  source  = "../../modules/db"
  my_env  = var.environment
  tags    = local.common_tags
}

module "ec2" {
  source         = "../../modules/ec2"
  instance_count = var.ec2_instance_count
  instance_type  = var.ec2_instance_type
  name_prefix    = "${var.project}-${var.environment}-web"
  tags           = local.common_tags
}

