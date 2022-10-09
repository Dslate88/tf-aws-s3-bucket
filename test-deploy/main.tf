locals {
  region       = "us-east-1"
  stack_name   = "test_s3_bucket"
  bogus_bucket = "bogus-adfadafdafw"
  # s3_keeps_bucket = "account-keeps"
  # ver_buckets     = ["account-junk-versioned", "account-keeps-versioned"]
  # nonver_buckets  = ["account-junk-nonversioned", "account-keeps-nonversioned"]
}

module "s3_bucket" {
  source      = "./.."
  bucket_name = local.bogus_bucket
  stack_name  = local.stack_name
}
