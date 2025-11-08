resource "aws_vpc" "this" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = merge(
    var.tags,
    {
      "Name"        = "${var.project_name}-${var.environment}-vpc"
      "Environment" = var.environment
      "Project"     = var.project_name
    }
  )
}
