provider "aws" {
  region = var.region
}

module "vpc" {
  source        = "./modules/vpc_module"
  project_name  = var.project_name
  environment   = var.environment
  tags          = var.tags
}

module "subnet" {
  source        = "./modules/subnet_module"
  vpc_id        = module.vpc.vpc_id
  project_name  = var.project_name
  environment   = var.environment
  tags          = var.tags
}

module "security_group" {
  source        = "./modules/security_group_module"
  vpc_id        = module.vpc.vpc_id
  project_name  = var.project_name
  environment   = var.environment
  tags          = var.tags
}

module "ec2" {
  source        = "./modules/ec2_module"
  subnet_id     = module.subnet.subnet_id
  security_group_id = module.security_group.sg_id
  instance_type = "t2.micro"
  ami           = var.ami
  key_name      = var.key_name
  project_name  = var.project_name
  environment   = var.environment
  tags          = var.tags
}

module "s3" {
  source        = "./modules/s3_module"
  bucket_name   = var.bucket_name
  project_name  = var.project_name
  environment   = var.environment
  tags          = var.tags
}
