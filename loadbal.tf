resource "azurerm_public_ip" "wpLBPIP" {
  name                = "wpPIP"
  location            = azurerm_resource_group.resourcegroup.location
  resource_group_name = azurerm_resource_group.resourcegroup.name
  allocation_method   = "Static"
}

resource "azurerm_lb" "wpLB" {
  name                = "wpLB"
  location            = azurerm_resource_group.resourcegroup.location
  resource_group_name = azurerm_resource_group.resourcegroup.name

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.wpLBPIP.id
  }
}