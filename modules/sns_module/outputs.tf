output "sns_topic_arn" {
  value = aws_sns_topic.this.arn
}

output "sns_subscription_id" {
  value = aws_sns_topic_subscription.email_sub.id
}
