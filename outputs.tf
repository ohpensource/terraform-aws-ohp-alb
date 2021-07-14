output "id" {
  description = "The id of the user pool"
  value       = var.enabled ? aws_cognito_user_pool.pool[0].id : null
}