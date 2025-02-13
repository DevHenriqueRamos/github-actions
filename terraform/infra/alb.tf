resource "aws_lb" "alb" {
  name            = "ECS-Java-Spring"
  security_groups = [aws_security_group.alb.id]
  subnets         = module.vpc.public_subnets
}

resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 8080
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target.arn
  }
}

resource "aws_lb_target_group" "target" {
  name        = "ECS-Java-Spring"
  port        = 8080
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = module.vpc.vpc_id
}

output "dns" {
  value = aws_lb.alb.dns_name
}
