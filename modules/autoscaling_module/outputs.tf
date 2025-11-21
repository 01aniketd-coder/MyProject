output "asg_id" {
  description = "Auto Scaling Group ID"
  value       = aws_autoscaling_group.asg.id
}

output "launch_template_id" {
  description = "Launch template id"
  value       = aws_launch_template.lt.id
}

output "asg_name" {
  description = "Auto Scaling Group name"
  value       = aws_autoscaling_group.asg.name
}
