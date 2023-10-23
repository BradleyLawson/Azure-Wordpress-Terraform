resource "azurerm_virtual_network" "wp-vnet" {
  name                = "wp-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.resourcegroup.location
  resource_group_name = azurerm_resource_group.resourcegroup.name
}