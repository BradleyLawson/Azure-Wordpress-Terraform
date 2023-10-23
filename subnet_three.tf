resource "azurerm_subnet" "snthree" {
  name                 = "snthree"
  resource_group_name  = azurerm_resource_group.resourcegroup.name
  virtual_network_name = azurerm_virtual_network.wp-vnet.name
  address_prefixes     = ["10.0.3.0/24"]
}