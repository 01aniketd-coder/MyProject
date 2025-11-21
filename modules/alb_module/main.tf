# Note: do not declare provider here; provider should be declared in root module.

resource "aws_lb" "this" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = "application"
  subnets            = var.subnet_ids
  security_groups    = length(var.security_group_ids) > 0 ? var.security_group_ids : null

  enable_deletion_protection = false

  tags = merge({
    Name = var.name
  }, var.tags)
}

resource "aws_lb_target_group" "this" {
  name     = "${var.name}-tg"
  port     = var.target_port
  protocol = var.protocol
  vpc_id   = cidrsubnet(aws_vpc.this.cidr_block,0,0) != "" ? aws_vpc.this.id : null # placeholder; prefer passing vpc_id if known
  # NOTE: If your infra uses multiple VPC setups, pass vpc_id instead; otherwise, attach targets by instance IDs.

  health_check {
    enabled             = true
    path                = var.health_check.path
    matcher             = var.health_check.matcher
    interval            = var.health_check.interval
    timeout             = var.health_check.timeout
    healthy_threshold   = var.health_check.healthy_threshold
    unhealthy_threshold = var.health_check.unhealthy_threshold
  }

  tags = merge({
    Name = "${var.name}-tg"
  }, var.tags)
}

# Listener
resource "aws_lb_listener" "this" {
  load_balancer_arn = aws_lb.this.arn
  port              = var.port
  protocol          = var.protocol

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.this.arn
  }
}

# Attach instances to target group (if provided)
resource "aws_lb_target_group_attachment" "instances" {
  count            = length(var.target_instance_ids)
  target_group_arn = aws_lb_target_group.this.arn
  target_id        = var.target_instance_ids[count.index]
  port             = var.target_port
}
