# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
     resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
  subscription_id = "41b5e51d-76b5-4464-a7c4-5530c37b0cea"
}