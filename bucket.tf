resource "aws_s3_bucket" "b" {
  bucket = var.name

  tags = {
    Name        = var.name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3_encryption" {
  count  = var.encryption_enabled == true ? 1 : 0
  
  bucket = aws_s3_bucket.b.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = var.encryption_type
    }
  }
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
  count  = var.versioning == true ? 1 : 0
  
  bucket = aws_s3_bucket.b.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_policy" "cloudfront_bucket_policy" {
  count  = var.policy_enabled == true ? 1 : 0 
  bucket = aws_s3_bucket.b.id

  policy = var.inline_policy

  depends_on = [
    aws_s3_bucket.b
  ]
}

resource "aws_s3_bucket_public_access_block" "b_block" {
  count  = var.public_access == false ? 1 : 0
  bucket = aws_s3_bucket.b.id
  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  depends_on = [
    aws_s3_bucket_policy.cloudfront_bucket_policy
  ]
}
