output "bucket_id" {
  value       = aws_s3_bucket.this.id
  description = "ID of the created S3 bucket"
}
