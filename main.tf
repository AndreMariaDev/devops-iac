module "s3" {
  source         = "./modules/s3"
  s3_bucket_name = "tutorial-rocketset-iac"
  s3_tags = {
    Iac = true
  }
}

module "cloudfront" {
  source             = "./modules/cloudfront"
  bucket_domain_name = module.s3.bucket_domain_name
  origin_id          = module.s3.bucket_id
  cdn_tags = {
    Iac = true
  }
  depends_on = [
    module.s3
  ]
}
