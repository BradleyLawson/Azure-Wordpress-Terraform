resource "azurerm_redis_cache" "wp-redis" {
  name                = "wp-redis"
  location            = var.loc
  resource_group_name = var.rg
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
  enable_non_ssl_port = false
  public_network_access_enabled = false
}