resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = merge(
    var.tags,
    {
      "Name"        = "${var.project_name}-${var.environment}-bucket"
      "Environment" = var.environment
      "Project"     = var.project_name
    }
  )
}
