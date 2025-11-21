provider "aws" {
  region = var.region
}

resource "aws_dynamodb_table" "this" {
  name         = var.table_name
  billing_mode = "PROVISIONED"

  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  hash_key = var.hash_key

  attribute {
    name = var.hash_key
    type = "S"       # S = String, N = Number, B = Binary
  }

  tags = {
    Name        = "${var.project_name}-${var.environment}-dynamodb"
    Project     = var.project_name
    Environment = var.environment
    Owner       = var.team
    ManagedBy   = "Terraform"
  }
}
