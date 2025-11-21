variable "project_name" {}
variable "environment" {}
variable "owner" {}
variable "cost_center" {}

variable "rds_identifier" {
  description = "Unique DB instance identifier"
}

variable "engine" {
  description = "Database engine (mysql, postgres)"
}

variable "engine_version" {
  description = "DB engine version"
}

variable "instance_class" {
  description = "RDS instance size"
}

variable "allocated_storage" {
  description = "Allocated storage in GB"
}

variable "db_name" {
  description = "Database name"
}

variable "username" {
  description = "Master username"
}

variable "password" {
  description = "Master password"
  sensitive   = true
}

variable "subnet_ids" {
  type = list(string)
}

variable "sg_id" {
  description = "Security group ID for RDS"
}
