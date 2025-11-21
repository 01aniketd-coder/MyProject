resource "aws_sns_topic" "this" {
  name = "${var.project}-${var.env}-topic"

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.env}-sns"
    }
  )
}

resource "aws_sns_topic_subscription" "email_sub" {
  topic_arn = aws_sns_topic.this.arn
  protocol  = "email"
  endpoint  = var.email
}
