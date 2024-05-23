output "arn" {
  value       = aws_s3_bucket.b.arn
  description = "Output ARN S3 Bucket"
}

output "id" {
  value       = aws_s3_bucket.b.id
  description = "Output ID S3 Bucket"
}

output "region" {
  value       = aws_s3_bucket.b.region
  description = "Output Region S3 Bucket"
}

output "domain_name" {
  value       = aws_s3_bucket.b.bucket_domain_name
  description = "Output Domain name S3 Bucket"
}
