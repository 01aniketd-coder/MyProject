provider "aws" {
  region = var.region
}

# Launch Template (recommended over legacy launch config)
resource "aws_launch_template" "lt" {
  name_prefix   = var.launch_template_name
  image_id      = var.ami
  instance_type = var.instance_type
  key_name      = length(trim(var.key_name)) > 0 ? var.key_name : null

  vpc_security_group_ids = var.security_group_ids

  tag_specifications {
    resource_type = "instance"
    tags = merge({
      Name = "${var.asg_name}-instance"
    }, var.tags)
  }
}

# Auto Scaling Group
resource "aws_autoscaling_group" "asg" {
  name                      = var.asg_name
  max_size                  = var.asg_max_size
  min_size                  = var.asg_min_size
  desired_capacity          = var.asg_desired_capacity
  vpc_zone_identifier       = var.subnet_ids
  launch_template {
    id      = aws_launch_template.lt.id
    version = "$$Latest"
  }

  tag {
    key                 = "Name"
    value               = var.asg_name
    propagate_at_launch = true
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}

# Optional: Attach simple lifecycle hook / scaling policy (left minimal for reuse)
