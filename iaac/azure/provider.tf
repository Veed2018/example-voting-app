terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "tfstate"
    storage_account_name = "tfstate21752"
    container_name       = "tfstate"
    key                  = "dev.terraform.tstate"
  }
}

provider "azurerm" {
  features {}

  subscription_id = "58748300-daee-4162-a4a4-bc9d55d91416"
  tenant_id = "6a409da8-6347-46b7-8118-45b7a5620dab"
  # Service Principal Vars used for AKS deployment
  client_id = var.client_id
  client_secret = var.client_secret
}