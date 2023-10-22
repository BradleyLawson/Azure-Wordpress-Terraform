resource "azurerm_resource_group" "terraform_practice" {
  name     = "wp-rg"
  location = var.loc
}