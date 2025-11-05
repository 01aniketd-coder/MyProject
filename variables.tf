variable "region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "ami" {
  default = "ami-0c02fb55956c7d316" # Example Amazon Linux 2 in ap-south-1
}

variable "key_name" {
  description = "AWS key pair name"
}

variable "vm_name" {
  description = "Name of the EC2 instance"
  default     = "chatbot-ec2"
}

variable "bucket_name" {
  description = "Name for S3 bucket"
}
