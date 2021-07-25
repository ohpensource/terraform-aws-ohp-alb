variable "name" {
  description = "(Required) name of the Application Load Balancer"
  default     = "main_alb"
}

variable "default_sg_name" {
  description = "(Optional) name of the Security group of the Application Load Balancer in case no security group is defined"
  default     = ""
}

variable "subnets_id" {
  description = "(Required) Id of the public subnet of the Application Load Balancer"
  default     = []
}

variable "vpc_id" {
  description = "(Required) Id of the VPC for the SG of the ALB"
  default     = ""
}

variable "security_groups" {
  description = "(Required) Security groups associated with the ALB"
  default     = []
}

variable "https_listeners" {
  description = "(Required) List of https listeners"
  default     = []
}

variable "http_tcp_listeners" {
  description = "(Required) List of http listeners"
  default     = []
}

variable "target_groups" {
  description = "(Required) List of target groups"
  default     = []
}

variable "load_balancer_type" {
  description = "(Optional) Type of load balancer 'application' or 'network' "
  default     = "application"
}

variable "bucket_name" {
  description = "(Required) List of target groups"
  default     = ""
}

variable "create_lb" {
  description = "(Optional) Controls if the Load Balancer should be created"
  default     = "true"
}

variable "drop_invalid_header_fields" {
  description = "(Optional) Indicates whether invalid header fields are dropped in application load balancers. Defaults to false."
  default     = "false"
}

variable "enable_cross_zone_load_balancing" {
  description = "(Optional) Indicates whether cross zone load balancing should be enabled in application load balancers."
  default     = "false"
}

variable "enable_deletion_protection" {
  description = "(Optional) If true, deletion of the load balancer will be disabled via the AWS API. This will prevent Terraform from deleting the load balancer. Defaults to false."
  default     = "true"
}

variable "enable_http2" {
  description = "(Optional) Indicates whether HTTP/2 is enabled in application load balancers."
  default     = "true"
}

variable "extra_ssl_certs" {
  description = "(Optional) A list of maps describing any extra SSL certificates to apply to the HTTPS listeners. Required key/values: certificate_arn, https_listener_index (the index of the listener within https_listeners which the cert applies toward)."
  default     = []
}

variable "http_tcp_listeners_tags" {
  description = "(Optional) A map of tags to add to all tcp listeners"
  default     = {}
}

variable "https_listener_rules" {
  description = "(Optional) A list of maps describing the Listener Rules for this ALB. Required key/values: actions, conditions. Optional key/values: priority, https_listener_index (default to https_listeners[count.index])"
  default     = []
}

variable "https_listener_rules_tags" {
  description = "(Optional) A map of tags to add to all https listener rules"
  default     = {}
}

variable "https_listeners_tags" {
  description = "(Optional) A map of tags to add to all https listener"
  default     = {}
}

variable "idle_timeout" {
  description = "(Optional) The time in seconds that the connection is allowed to be idle."
  default     = 60
}

variable "internal" {
  description = "Boolean determining if the load balancer is internal or externally facing."
  default     = "false"
}

variable "ip_address_type" {
  description = "(Optional) The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack."
  default     = "ipv4"
}

variable "lb_tags" {
  description = "(Optional) A map of tags to add to load balancer"
  default     = {}
}

variable "listener_ssl_policy_default" {
  description = "(Optional) The security policy if using HTTPS externally on the load balancer."
  default     = "ELBSecurityPolicy-2016-08"
}

variable "load_balancer_create_timeout" {
  description = "(Optional) Timeout value when creating the ALB."
  default     = "10m"
}

variable "load_balancer_delete_timeout" {
  description = "Timeout value when deleting the ALB."
  default     = "10m"
}

variable "load_balancer_update_timeout" {
  description = "(Optional) Timeout value when updating the ALB."
  default     = "10m"
}

variable "subnet_mapping" {
  description = "(Optional) A list of subnet mapping blocks describing subnets to attach to network load balancer"
  default     = []
}

variable "tags" {
  description = "(Required) A map of tags to add to all resources"
  default     = {}
}

variable "target_group_tags" {
  description = "(Required) A map of tags to add to all target groups"
  default     = {}
}
