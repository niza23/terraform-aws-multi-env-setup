# Create the S3 bucket
resource "aws_s3_bucket" "this" {
    bucket = var.bucket_name  # Name of the bucket
    acl    = var.acl          # Access control list (default = private)

# Enable or disable versioning for the bucket
versioning {
    enabled = var.versioning
}

# Apply user-defined tags
    tags = var.tags
}

# Block all public access to the bucket for security
resource "aws_s3_bucket_public_access_block" "this" {
    bucket = aws_s3_bucket.this.id

    block_public_acls       = true
    block_public_policy     = true
    ignore_public_acls      = true
    restrict_public_buckets = true
}

