variable "name" {
  description = "Name prefix for ALB resources"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs for ALB"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs to attach to ALB"
  type        = list(string)
  default     = []
}

variable "internal" {
  description = "Whether the ALB is internal"
  type        = bool
  default     = false
}

variable "protocol" {
  description = "Listener protocol (HTTP or HTTPS)"
  type        = string
  default     = "HTTP"
}

variable "port" {
  description = "Listener port"
  type        = number
  default     = 80
}

variable "target_port" {
  description = "Port on targets (instances) to send traffic to"
  type        = number
  default     = 80
}

variable "target_instance_ids" {
  description = "List of instance ids to register to target group (optional)"
  type        = list(string)
  default     = []
}

variable "health_check" {
  description = "Map of health check settings"
  type = object({
    path                = string
    matcher             = string
    interval            = number
    timeout             = number
    healthy_threshold   = number
    unhealthy_threshold = number
  })
  default = {
    path                = "/"
    matcher             = "200-399"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

variable "tags" {
  description = "Map of tags to apply"
  type        = map(string)
  default     = {}
}
