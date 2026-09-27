terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.0.0"
}

resource "random_string" "sufix" {
  length  = var.length
  special = true
}
resource "azurerm_virtual_network" "vnet" {
  name                = local.virtual_network_name
  address_space = var.vnet_address_space 
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags = local.common_tags
  
}
