variable "handler"      { type = string }
variable "runtime"      { type = string }
variable "role_arn"     { type = string }
variable "zip_file"     { type = string }

variable "project_name" { type = string }
variable "environment"  { type = string }
variable "tags"         { type = map(string) }
