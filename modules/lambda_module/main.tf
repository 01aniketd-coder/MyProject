resource "aws_lambda_function" "this" {
  function_name = "${var.project_name}-${var.environment}-lambda"

  handler = var.handler
  runtime = var.runtime
  role    = var.role_arn

  filename         = var.zip_file
  source_code_hash = filebase64sha256(var.zip_file)

  tags = merge(
    var.tags,
    {
      "Name"        = "${var.project_name}-${var.environment}-lambda"
      "Environment" = var.environment
      "Project"     = var.project_name
    }
  )
}
