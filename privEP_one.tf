resource "azurerm_private_endpoint" "wp-PE1" {
  name                = "wp-PE1"
  location            = var.loc
  resource_group_name = var.rg
  subnet_id           = var.sn2id

  private_service_connection {
    name                           = "wp-PE1-privateserviceconnection"
    private_connection_resource_id = var.redisid
    subresource_names              = ["redisCache"]
    is_manual_connection           = false
  }

  private_dns_zone_group {
    name                 = "wp-dns-zone-group"
    private_dns_zone_ids = [var.privDNZ1id]
  }
}

resource "azurerm_private_dns_zone" "wp-PE1" {
  name                = "privatelink.redis.cache.windows.net"
  resource_group_name = var.rg
}

resource "azurerm_private_dns_zone_virtual_network_link" "wp-PE1" {
  name                  = "wp-link"
  resource_group_name   = var.rg
  private_dns_zone_name = var.privDNZ1name
  virtual_network_id    = var.vnetid
}