variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

variable "scan_on_push" {
  description = "Enable vulnerability scanning"
  type        = bool
  default     = true
}

variable "encryption_type" {
  description = "KMS or AES256 encryption"
  type        = string
  default     = "AES256"
}
