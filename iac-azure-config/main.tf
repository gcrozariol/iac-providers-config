resource "azurerm_resource_group" "rg" {
  name     = "app-hmg"
  location = "brazilsouth"

  tags = {
    Iac = "True"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "app-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tags = {
    Iac = "True"
  }
}