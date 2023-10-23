resource "azurerm_private_endpoint" "wp-PE1" {
  name                = "wp-PE1"
  location            = azurerm_resource_group.resourcegroup.location
  resource_group_name = azurerm_resource_group.resourcegroup.name
  subnet_id           = azurerm_subnet.sn-two.id

  private_service_connection {
    name                           = "wp-PE1-privateserviceconnection"
    private_connection_resource_id = azurerm_redis_cache.wp-redis.id
    subresource_names              = ["redisCache"]
    is_manual_connection           = false
  }

  private_dns_zone_group {
    name                 = "wp-dns-zone-group"
    private_dns_zone_ids = [azurerm_private_dns_zone.wp-PE1.id]
  }
}

resource "azurerm_private_dns_zone" "wp-PE1" {
  name                = "privatelink.redis.cache.windows.net"
  resource_group_name = azurerm_resource_group.resourcegroup.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "wp-PE1" {
  name                  = "wp-link"
  resource_group_name   = azurerm_resource_group.resourcegroup.name
  private_dns_zone_name = azurerm_private_dns_zone.wp-PE1.name
  virtual_network_id    = azurerm_virtual_network.wp-vnet.id
}