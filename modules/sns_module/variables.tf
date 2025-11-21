variable "email" {
  type        = string
  description = "Email address to subscribe to SNS topic"
}

variable "project" {
  type        = string
}

variable "env" {
  type        = string
}

variable "common_tags" {
  type = map(string)
}
