resource "azurerm_subnet" "sntwo" {
  name                 = "sntwo"
  resource_group_name  = azurerm_resource_group.resourcegroup.name
  virtual_network_name = azurerm_virtual_network.wp-vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}