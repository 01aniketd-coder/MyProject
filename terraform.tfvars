project_name = "chatbot-app"
environment  = "dev"
region       = "ap-south-1"

tags = {
  Owner       = "DevOpsTeam"
  ManagedBy   = "Terraform"
  CostCenter  = "IT-Engineering"
}

# EC2 specific values
ami           = "ami-052c08d70def0ac62"   # Correct for ap-south-1
instance_type = "t2.micro"
key_name      = "aniket-key"

# S3 bucket name (must be unique globally)
bucket_name   = "aniket-chatbot-bucket-948372"
