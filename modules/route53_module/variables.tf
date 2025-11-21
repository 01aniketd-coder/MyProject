variable "domain_name" {
  type        = string
  description = "Domain name for hosted zone"
}

variable "record_name" {
  type        = string
  description = "Record name"
}

variable "records" {
  type        = list(string)
  description = "List of IPs for A record"
}

variable "ttl" {
  type        = number
  default     = 300
}

variable "common_tags" {
  type = map(string)
}

variable "project" {
  type = string
}

variable "env" {
  type = string
}
