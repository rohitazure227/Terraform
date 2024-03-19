terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.94.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "ncpl-vm-rg"
    storage_account_name = "ncplstorage123456123"
    container_name = "terraformncplstate"
    key = "sbx/state"
  }
}

provider "azurerm" {
  features {}
}
