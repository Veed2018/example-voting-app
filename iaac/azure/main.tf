locals {
  location = var.location
  resource_group = "dev-terraform" 
}

## VNet ##
resource "azurerm_virtual_network" "vnet-front-dev-01" {
  name                = "vnet-front-dev-01"
  resource_group_name = local.resource_group
  location            = local.location
  address_space       = ["10.1.0.0/16"]

  tags = {
    env = "Dev"
  }
}