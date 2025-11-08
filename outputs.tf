output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = module.subnet.subnet_id
}

output "security_group_id" {
  description = "Security Group ID"
  value       = module.security_group.sg_id
}

output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2.instance_id
}

output "ec2_public_ip" {
  description = "EC2 Public IP Address"
  value       = module.ec2.public_ip
}

output "s3_bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = module.s3.bucket_arn
}
