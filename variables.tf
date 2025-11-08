variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "environment" {
  description = "Environment (dev, test, prod)"
  type        = string
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
}
