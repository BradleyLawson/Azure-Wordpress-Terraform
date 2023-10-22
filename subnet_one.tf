resource "azurerm_subnet" "sn-one" {
  name                 = "sn-subnet"
  resource_group_name  = var.rg
  virtual_network_name = var.vnetname
  address_prefixes     = ["10.0.1.0/24"]
}