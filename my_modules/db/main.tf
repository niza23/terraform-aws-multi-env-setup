# DynamoDB table for application data
resource "aws_dynamodb_table" "my_app_table" {
  # Table name will include the environment (e.g., dev-tws-demo-app-table)
  name         = "${var.my_env}-tws-demo-app-table"
  billing_mode = "PAY_PER_REQUEST" # On-demand billing

  # Partition key definition
  hash_key = "userID"

  # Attribute schema
  attribute {
    name = "userID"
    type = "S" # String type
  }

  # Tags for identification
  tags = merge(
    {
      Name = "${var.my_env}-tws-demo-app-table"
    },
    var.tags
  )
}
