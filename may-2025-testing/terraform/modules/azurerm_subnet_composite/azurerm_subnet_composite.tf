resource "azurerm_subnet" "this" {
  address_prefixes     = var.address_prefixes
  name                 = var.name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.virtual_network_name

  dynamic "delegation" {
    for_each = var.delegations != null ? var.delegations : []

    content {
      name = delegation.value.delegation_name
      service_delegation {
        name    = delegation.value.service_name
        actions = length(delegation.value.service_actions) == 0 ? null : delegation.value.service_actions
      }
    }
  }

  default_outbound_access_enabled = var.default_outbound_access_enabled
  service_endpoint_policy_ids     = var.service_endpoint_policy_ids
  service_endpoints               = var.service_endpoints
}

resource "azurerm_subnet_network_security_group_association" "secgroup_association" {
  count = var.network_security_group_id != "" ? 1 : 0

  depends_on = [azurerm_subnet.this]

  subnet_id                 = azurerm_subnet.this.id
  network_security_group_id = var.network_security_group_id
}
