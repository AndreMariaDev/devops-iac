output bucket_domain_name {
  value       = aws_s3_bucket.bucket_to_cloudfront.bucket_domain_name
  sensitive   = false
  description = "Nome de domínio do bucket S3"
  depends_on  = []
}

output bucket_id {
  value       = aws_s3_bucket.bucket_to_cloudfront.id
  sensitive   = false
  description = "Id de domínio do bucket S3"
  depends_on  = []
}