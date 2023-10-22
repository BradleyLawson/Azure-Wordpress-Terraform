variable "loc" {
  type = string
  description = "The location where resources will be created"
  default     = "eastus"
}

variable "rg" {
    description = "Name of the resource group for all resources to be placed"
    default = azurerm_resource_group.name
}

variable "storagename" {
    default = azurerm_storage_account.storage.name
}

variable "storageid" {
    default = azurerm_storage_account.storage.id
}

variable "vnetname" {
    default = azurerm_virtual_network.wp-vnet.name
}

variable "vnetid" {
    default = azurerm_virtual_network.wp-vnet.id
}

variable "sn1name" {
  default = azurerm_subnet.sn-one.name
}

variable "sn1id" {
  default = azurerm_subnet.sn-one.id
}

variable "sn2name" {
  default = azurerm_subnet.sn-two.name
}

variable "sn2id" {
  default = azurerm_subnet.sn-two.id
}

variable "sn3name" {
  default = azurerm_subnet.sn-three.name
}

variable "sn3id" {
  default = azurerm_subnet.sn-three.id
}
variable "redisname" {
  default = azurerm_redis_cache.wp-redis.name
}
variable "redisid" {
  default = azurerm_redis_cache.wp-redis.id
}

variable "privDNZ1name" {
  default = azurerm_private_dns_zone.wp-PE1.name
}

variable "privDNZ1id" {
  default = azurerm_private_dns_zone.wp-PE1.id
}

variable "privDNZ2name" {
  default = azurerm_private_dns_zone.wp-PE2.name
}

variable "privDNZ2id" {
  default = azurerm_private_dns_zone.wp-PE2.id
}