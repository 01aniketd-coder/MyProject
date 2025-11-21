variable "project_name" {
  description = "Project identifier used for naming"
  type        = string
}

variable "environment" {
  description = "Deployment environment (dev/stage/prod)"
  type        = string
}

variable "team" {
  description = "Owning team for tagging"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "table_name" {
  description = "DynamoDB table name"
  type        = string
}

variable "hash_key" {
  description = "Primary partition key"
  type        = string
}

variable "read_capacity" {
  description = "Read capacity units"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "Write capacity units"
  type        = number
  default     = 5
}
