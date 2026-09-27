output "name" {
  value = random_string.sufix.result
}
output "unique_name" {
  value= local.unique_name
}
output "length" {
  description = "The length of the resource"
  value       = var.length
}

output "application_name" {
  description = "Integradora"
  value       = var.application_name
}

output "enable_monitoring" {
  description = "Enable monitoring"
  value       = var.enable_monitoring
}

output "region" {
  description = "Region"
  value       = var.region
}

output "environment_tags" {
  description = "Environment tags"
  value       = var.environment_tags
}

output "application_config" {
  description = "Application config"
  value       = var.application_config
}

output "allowed_networks" {
  description = "Allowed networks"
  value       = var.allowed_networks
}