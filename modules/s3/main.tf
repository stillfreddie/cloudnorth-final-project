resource "aws_s3_bucket" "cloudnorth_static_site_bucket" {
  bucket = var.bucket_name

  tags = {
    Name    = var.bucket_name
    Project = "CloudNorth"
  }
}