locals {
  region       = "us-east-1"
  stack_name   = "test_s3_bucket"
  bogus_bucket = "bogus-adfadafdafw"
  is_versioned = false
}

module "s3_bucket" {
  source       = "./.."
  bucket_name  = local.bogus_bucket
  stack_name   = local.stack_name
  is_versioned = local.is_versioned
}
