resource "aws_lb" "cloudnorth_alb" {
  name               = "cloudnorth-alb"
  load_balancer_type = "application"
  internal           = false
  subnets            = var.alb_subnet_ids
  security_groups    = [var.alb_sg_id]

  tags = {
    Name    = "cloudnorth-alb"
    Project = "CloudNorth"
  }
}

resource "aws_lb_target_group" "cloudnorth_tg" {
  name     = "cloudnorth-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpc_id

  health_check {
    path                = "/"
    interval            = 30
    timeout             = 5
    healthy_threshold   = 5
    unhealthy_threshold = 2
    matcher             = "200"
  }

  tags = {
    Name    = "cloudnorth-tg"
    Project = "CloudNorth"
  }
}

resource "aws_lb_listener" "cloudnorth_listener" {
  load_balancer_arn = aws_lb.cloudnorth_alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.cloudnorth_tg.arn
  }
}