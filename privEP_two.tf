data "azurerm_resource_group" "database" {
  name     = "database"
}

data "azurerm_mysql_flexible_server" "database" {
  name                   = "conoco-project2"
  resource_group_name    = data.azurerm_resource_group.database.name
}

resource "azurerm_private_endpoint" "wp-PE2" {
  name                = "wp-PE2"
  location            = var.loc
  resource_group_name = var.rg
  subnet_id           = var.sn2id

  private_service_connection {
    name                           = "wp-PE2-privateserviceconnection"
    private_connection_resource_id = data.azurerm_mysql_flexible_server.database.id
    subresource_names              = ["mysqlServer"]
    is_manual_connection           = false
  }

  private_dns_zone_group {
    name                 = "wp-PE2-dns-zone-group"
    private_dns_zone_ids = [privDNZ2id]
  }
}

resource "azurerm_private_dns_zone" "wp-PE2" {
  name                = "privatelink.mysql.database.azure.com"
  resource_group_name = var.rg
}

resource "azurerm_private_dns_zone_virtual_network_link" "wp-PE2" {
  name                  = "wp-PE2-link"
  resource_group_name   = var.rg
  private_dns_zone_name = var.privDNZ2name
  virtual_network_id    = var.vnetid
}