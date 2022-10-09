resource "aws_s3_bucket" "default" {
  bucket = var.bucket_name
  tags = {
    stack = var.stack_name
  }
}

resource "aws_s3_bucket_versioning" "enable" {
  count  = var.is_versioned ? 1 : 0
  bucket = aws_s3_bucket.default.id
  versioning_configuration {
    status = "Enabled"
  }
}

# TODO: toggle config when/if needed
resource "aws_s3_bucket_ownership_controls" "default" {
  bucket = aws_s3_bucket.default.id
  rule {
    object_ownership = var.object_ownership
  }
}
