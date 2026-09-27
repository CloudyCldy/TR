locals {
  unique_name = "${var.application_name}-${random_string.sufix.result}"
  resource_group_name = "${var.project_name}-${var.environment}-${var.location}-001"
  virtual_network_name = "vnet-${var.project_name}-${var.environment}-${var.location}-001"
  common_tags = merge (
    var.tags,
    {
      project = var.project_name
      environment = var.environment
      location = var.location
    }
  )
}