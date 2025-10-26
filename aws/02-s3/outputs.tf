output "bucket_id" {
  description = "O nome (ID) do bucket S3."
  value       = aws_s3_bucket.default_bucket.id
}

output "bucket_arn" {
  description = "O ARN do bucket S3."
  value       = aws_s3_bucket.default_bucket.arn
}
