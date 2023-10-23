resource "azurerm_redis_cache" "wp-redis" {
  name                = "wp-redis"
  location            = azurerm_resource_group.resourcegroup.location
  resource_group_name = azurerm_resource_group.resourcegroup.name
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
  enable_non_ssl_port = false
  public_network_access_enabled = false
}