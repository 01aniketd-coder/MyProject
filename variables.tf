# Common variables
variable "project_name" {
  description = "Project name used for tagging"
  type        = string
}

variable "environment" {
  description = "Environment name (dev/stage/prod)"
  type        = string
}

variable "region" {
  description = "AWS region for deployment"
  type        = string
}

variable "tags" {
  description = "Common tags applied to all resources"
  type        = map(string)
}

# EC2 variables
variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  type        = string
}

variable "key_name" {
  description = "Key pair name for EC2"
  type        = string
}

# S3 variables
variable "bucket_name" {
  description = "Globally unique bucket name"
  type        = string
}
