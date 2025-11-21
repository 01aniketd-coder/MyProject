# Module 12: AutoScaling Module (ASG + Launch Template)

variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami" {
  description = "AMI ID for launch template"
  type        = string
}

variable "instance_type" {
  description = "Instance type for ASG instances"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
  default     = ""
}

variable "asg_name" {
  description = "Name for the Auto Scaling Group"
  type        = string
}

variable "launch_template_name" {
  description = "Name for the EC2 Launch Template"
  type        = string
}

variable "vpc_id" {
  description = "VPC id where instances will be launched"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet ids for ASG (prefer private subnets)"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group ids to attach"
  type        = list(string)
  default     = []
}

variable "asg_min_size" {
  description = "ASG minimum size"
  type        = number
  default     = 1
}

variable "asg_max_size" {
  description = "ASG maximum size"
  type        = number
  default     = 3
}

variable "asg_desired_capacity" {
  description = "ASG desired capacity"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Map of tags to apply to ASG and instances"
  type        = map(string)
  default     = {}
}
