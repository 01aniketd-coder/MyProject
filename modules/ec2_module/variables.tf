variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "vm_name" {
  description = "Name tag for EC2 instance"
  type        = string
}

variable "security_group_name" {
  description = "Security group name"
  type        = string
  default     = "default-sg"
}

