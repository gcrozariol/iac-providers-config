output "bucket_id" {
  value       = data.aws_s3_bucket.bucket.id
  sensitive   = false
  description = "Domain ID S3 Bucket"
}

output "bucket_domain_name" {
  value       = data.aws_s3_bucket.bucket.bucket_domain_name
  sensitive   = false
  description = "S3 bucket domain name"
}