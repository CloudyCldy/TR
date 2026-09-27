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
locals {
  unique_name = "${var.application_name}-${random_string.sufix.result}"
}