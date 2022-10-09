variable "bucket_name" {
  type = string
}

variable "stack_name" {
  type = string
}

variable "is_versioned" {
  type        = bool
  default     = false
  description = "true enables s3 bucket versioning"
}

variable "object_ownership" {
  type        = string
  default     = "BucketOwnerEnforced"
  description = "BucketOwnerEnforced disables ACLs, account owns all objects"
}

variable "is_public" {
  type        = bool
  default     = false
  description = "true enables s3 public access via 4 acl settings"
}
