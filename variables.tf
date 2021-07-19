variable "name" {
  description = "(Required) name of the Application Load Balancer"
  default     = "main_alb"
}

variable "prefix" {
  description = "(Required) name of the Application Load Balancer"
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

variable "internal" {
  description = "(Required) Whether the application load balancer is internal "
  default     = false
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

variable "bucket_name" {
  description = "(Required) List of target groups"
  default     = ""
}