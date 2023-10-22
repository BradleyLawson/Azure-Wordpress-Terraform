resource "azurerm_subnet" "sn-two" {
  name                 = "sn-two"
  resource_group_name  = var.rg
  virtual_network_name = var.vnetname
  address_prefixes     = ["10.0.2.0/24"]
}