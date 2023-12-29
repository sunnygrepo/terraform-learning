terraform {
  required_version = ">=1.3.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.43.0"
    }
  }
  cloud {
    organization = "sunnyg"
    workspaces {
      name = "terraform-learning"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

resource "azurerm_resource_group" "rg" {
  name     = "Test"
  location = "uksouth"
}

#resource "azurerm_storage_account" "storage" {
 # name                     = "sunnygdeletemeadjakdsad"
  #location                 = azurerm_resource_group.rg.location
  #resource_group_name      = azurerm_resource_group.rg.name
  #account_tier             = "Standard"
  #account_replication_type = "RAGRS"
#}

resource "azurerm_storage_account" "storage1" {
  name                     = "sunnygdeletemebhsdashbdb"
  location                 = azurerm_resource_group.rg.location
  resource_group_name      = azurerm_resource_group.rg.name
  account_tier             = "Standard"
  account_replication_type = "RAGRS"
}
