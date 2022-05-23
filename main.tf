module "alb" {
  source                     = "terraform-aws-modules/alb/aws"
  version                    = "~> 7.0"
  create_lb                  = var.create_lb
  name                       = var.name
  load_balancer_type         = var.load_balancer_type
  vpc_id                     = var.vpc_id
  subnets                    = var.subnets_id
  enable_deletion_protection = var.enable_deletion_protection
  access_logs = {
    bucket  = var.bucket_name
    enabled = true
  }
  target_groups                    = var.target_groups
  https_listeners                  = var.https_listeners
  http_tcp_listeners               = var.http_tcp_listeners
  security_groups                  = var.security_groups
  drop_invalid_header_fields       = var.drop_invalid_header_fields
  http_tcp_listeners_tags          = var.http_tcp_listeners_tags
  enable_cross_zone_load_balancing = var.enable_cross_zone_load_balancing
  enable_http2                     = var.enable_http2
  extra_ssl_certs                  = var.extra_ssl_certs
  https_listener_rules             = var.https_listener_rules
  https_listener_rules_tags        = var.https_listener_rules_tags
  https_listeners_tags             = var.https_listeners_tags
  idle_timeout                     = var.idle_timeout
  internal                         = var.internal
  ip_address_type                  = var.ip_address_type
  lb_tags                          = var.lb_tags
  listener_ssl_policy_default      = var.listener_ssl_policy_default
  load_balancer_create_timeout     = var.load_balancer_create_timeout
  load_balancer_delete_timeout     = var.load_balancer_delete_timeout
  load_balancer_update_timeout     = var.load_balancer_update_timeout
  subnet_mapping                   = var.subnet_mapping
  tags                             = var.tags
  target_group_tags                = var.target_group_tags
}

