resource "azurerm_storage_account" "storage" {
  name                     = "wpstorage1234"
  resource_group_name      = azurerm_resource_group.resourcegroup.name
  location                 = azurerm_resource_group.resourcegroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}