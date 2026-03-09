resource "aws_dynamodb_table" "basic" {
  name         = "${var.environment}-${var.dynamodb_name}"
  billing_mode = "PAY_PER_REQUEST"  # no capacity planning needed
  hash_key     =      var.hash_key          # partition key

  attribute {
    name = var.hash_key
    type = "S"    # S = String, N = Number, B = Binary
  }

  tags = {
    Environment = var.environment
  }
}

