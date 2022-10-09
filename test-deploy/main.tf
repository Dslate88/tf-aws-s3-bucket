locals {
  region         = "us-east-1"
  stack_name     = "test_s3_bucket"
  test_s3_bucket = "test-s3-bucket-19834713"
  is_versioned   = true
  is_private     = true
}

module "s3_bucket" {
  source       = "./.."
  bucket_name  = local.test_s3_bucket
  stack_name   = local.stack_name
  is_versioned = local.is_versioned
  is_private   = local.is_private
}
