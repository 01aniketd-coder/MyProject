resource "aws_subnet" "this" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = merge(
    var.tags,
    {
      "Name"        = "${var.project_name}-${var.environment}-subnet"
      "Environment" = var.environment
      "Project"     = var.project_name
    }
  )
}
