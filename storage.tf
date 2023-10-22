resource "azurerm_storage_account" "storage" {
  name                     = "wpstorage1234"
  resource_group_name      = var.rg
  location                 = var.loc
  account_tier             = "Standard"
  account_replication_type = "LRS"
}