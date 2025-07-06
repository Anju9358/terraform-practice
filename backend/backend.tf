resource "aws_s3_bucket" "backend_bucket" {
	bucket = var.backend_bucket_name
	tags = {
	name = var.backend_bucket_name
	}
}

resource "aws_dynamodb_table" "backend_dynamodb" {
  name         = var.backend_table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockId"

  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    Name = var.backend_table_name
  }
}

