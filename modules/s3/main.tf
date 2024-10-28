resource "aws_s3_bucket" "bucket_to_cloudfront"{
    bucket = "${var.s3_bucket_name}-${terraform.workspace}"

    tags = {
    }
}