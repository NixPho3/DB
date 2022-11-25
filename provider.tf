terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id   = "7afe8b34-6edf-4814-ba68-be5c73c5ae1c"
  tenant_id         = "108bc864-cdf5-4ec3-8b7c-4eb06be1b41d"
}