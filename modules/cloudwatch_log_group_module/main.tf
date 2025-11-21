resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/${var.project_name}/${var.environment}/${var.log_group_name}"
  retention_in_days = var.retention_days

  tags = var.tags
}
