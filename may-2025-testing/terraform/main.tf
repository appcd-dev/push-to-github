module "stackgen_5f506321-272e-414e-99f6-fd4a254c0bb7" {
  source                          = "./modules/azurerm_subnet_composite"
  address_prefixes                = []
  default_outbound_access_enabled = null
  delegations                     = []
  location                        = var.location
  name                            = "sg-az-subnet-1"
  network_security_group_id       = ""
  resource_group_name             = local.resource_group_name
  service_endpoint_policy_ids     = []
  service_endpoints               = []
  virtual_network_name            = module.stackgen_fd99e64e-3b93-4921-a0a3-0f145a636d34.name
}

module "stackgen_d1e95b01-4f45-4753-9e48-dc6be963e22f" {
  source                          = "./modules/azurerm_subnet_composite"
  address_prefixes                = []
  default_outbound_access_enabled = null
  delegations                     = []
  location                        = var.location
  name                            = "sg-az-subnet-2"
  network_security_group_id       = ""
  resource_group_name             = local.resource_group_name
  service_endpoint_policy_ids     = []
  service_endpoints               = []
  virtual_network_name            = module.stackgen_fd99e64e-3b93-4921-a0a3-0f145a636d34.name
}

module "stackgen_fd99e64e-3b93-4921-a0a3-0f145a636d34" {
  source                  = "./modules/azurerm_vn"
  address_space           = []
  ddos_protection_name    = ""
  dns_servers             = []
  edge_zone               = null
  flow_timeout_in_minutes = null
  location                = var.location
  name                    = "sg-az-vnet-1"
  resource_group_name     = local.resource_group_name
  tags                    = {}
}

