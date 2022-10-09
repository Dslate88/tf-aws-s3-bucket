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
