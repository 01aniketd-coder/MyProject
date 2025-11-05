variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "acl" {
  description = "Canned ACL (e.g. private, public-read)"
  type        = string
  default     = "private"
}

variable "versioning" {
  description = "Enable versioning for bucket"
  type        = bool
  default     = false
}

