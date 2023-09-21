locals {
  location = var.location
  resource_group = azurerm_resource_group.rg-readit-dev-01.name 
}

### Resource Group ###
resource "azurerm_resource_group" "rg-readit-dev-01" {
  name     = "rg-readit-dev-01"
  location = local.location

  tags = {
    env = "Dev"
  }
}