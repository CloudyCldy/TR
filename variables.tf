variable "length"{
  description = "The length of the resource"
  type        = number
  
}
variable "application_name" {
    description = "Integradora"
    type        = string
}
variable "enable_monitoring" {
    description = "Enable monitoring"
    type        = bool
    default = true
  
}
variable "region" {
    description = "Region"
    type        = string
    default = "us-east-1"
  
}
variable "environment_tags" {
    description = "Environment tags"
    type        = map(string)
    default = {
        Environment = "dev"
        Production = "prod"
    }   
  
}
variable "application_config" {
    description = "Application config"
    type        = map(string)
    default = {
        app_name = "Usagi"
        app_version = "1.0.0"
    }
  
}
variable "allowed_networks" {
    description = "Allowed networks"
    type = set(string)
    default = [ "value" ]

  
}
variable "vnet_address_space" {
    description = "Vnet address space"
    type        = list(string)
        
}
variable "location"{
    description = "region de azxure"
    type = string
    default = "mexicocentral"
}
variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
}

variable "environment" {
  description = "Ambiente de despliegue (dev, staging, prod)"
  type        = string
}

variable "vnet_address_space" {
  description = "Espacio de direcciones de la red virtual"
  type        = list(string)
}

variable "tags" {
  description = "Etiquetas comunes para los recursos"
  type        = map(string)
  default     = {}
}