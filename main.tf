module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"
  name = var.name
  load_balancer_type = "application"
  vpc_id             = var.vpc_id
  subnets            = var.subnets_id
  enable_deletion_protection = true
  access_logs {
    bucket  = aws_s3_bucket.s3_alb_logs.bucket
    enabled = true
  }
  target_groups = var.target_groups
  https_listeners = var.https_listeners
  http_tcp_listeners = var.http_tcp_listeners
  security_groups = var.security_groups == [] ? [aws_security_group.allow_https.id] : var.security_groups
}

resource "aws_s3_bucket" "s3_alb_logs" {
  source  = "git@bitbucket.org:ohpen-dev/terraform-aws-ohp-s3.git?ref=v1.0.0"
  name = "${var.name}_alb_logs_s3"
}