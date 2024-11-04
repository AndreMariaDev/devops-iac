resource "aws_s3_bucket" "bucket_to_cloudfront" {
  bucket = "${var.s3_bucket_name}-${terraform.workspace}"

  tags = var.s3_tags
}

resource "aws_s3_bucket_website_configuration" "bucket_to_cloudfront" {
  bucket = aws_s3_bucket.bucket_to_cloudfront.bucket

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "index.html"
  }

  depends_on = [
    aws_s3_bucket.bucket_to_cloudfront
  ]
}