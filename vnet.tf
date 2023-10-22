resource "azurerm_virtual_network" "wp-vnet" {
  name                = "wp-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.loc
  resource_group_name = var.rg
}