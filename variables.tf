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