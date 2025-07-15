output "bucket_name" {
  description = "The Name of the S3 bucket"
  value       = aws_s3_bucket.cloudnorth_static_site_bucket.id
}