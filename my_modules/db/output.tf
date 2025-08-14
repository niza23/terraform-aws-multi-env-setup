output "dynamodb_table_name" {
  value       = aws_dynamodb_table.my_app_table.name
  description = "The name of the DynamoDB table"
}

output "dynamodb_table_arn" {
  value       = aws_dynamodb_table.my_app_table.arn
  description = "The ARN of the DynamoDB table"
}
