variable "subnet_id"         { type = string }
variable "security_group_id" { type = string }
variable "ami"               { type = string }
variable "instance_type"     { type = string }
variable "key_name"          { type = string }

variable "project_name" { type = string }
variable "environment"  { type = string }
variable "tags"         { type = map(string) }
