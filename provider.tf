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
  subscription_id   = "799be9fd-0f40-4fa4-8eb0-b7e881bb24f1"
  tenant_id         = "108bc864-cdf5-4ec3-8b7c-4eb06be1b41d"
}