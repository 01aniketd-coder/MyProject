provider "aws" {
  region = var.region
}

# --- EC2 MODULE ---
module "ec2" {
  source              = "./modules/ec2_module"
  region              = var.region
  ami                 = var.ami
  instance_type       = "t2.micro"
  key_name            = var.key_name
  vm_name             = var.vm_name
  security_group_name = "chatbot-sg"
}

# --- S3 MODULE ---
module "s3" {
  source      = "./modules/s3_module"
  bucket_name = var.bucket_name
  region      = var.region
  acl         = "private"
  versioning  = true
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}
