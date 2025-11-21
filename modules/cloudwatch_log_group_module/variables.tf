variable "project_name" {
  description = "Project or application name"
  type        = string
}

variable "environment" {
  description = "Environment such as dev, stage, prod"
  type        = string
}

variable "log_group_name" {
  description = "CloudWatch Log Group name"
  type        = string
}

variable "retention_days" {
  description = "Retention period for logs in days"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}
