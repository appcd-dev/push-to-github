locals {
  use_ddos_protection = var.ddos_protection_name != ""
}

resource "azurerm_network_ddos_protection_plan" "ddos_protection" {
  count = local.use_ddos_protection ? 1 : 0

  name                = var.ddos_protection_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_virtual_network" "this" {
  address_space           = var.address_space
  location                = var.location
  name                    = var.name
  resource_group_name     = var.resource_group_name
  edge_zone               = var.edge_zone
  flow_timeout_in_minutes = var.flow_timeout_in_minutes
  tags                    = var.tags
  dns_servers             = var.dns_servers

  dynamic "ddos_protection_plan" {
    for_each = local.use_ddos_protection ? [1] : []

    content {
      id     = azurerm_network_ddos_protection_plan.ddos_protection.id
      enable = true
    }
  }
}
