terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket" # Change this to your state bucket
    key            = "staging/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
