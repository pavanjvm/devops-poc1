resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = var.vm_size
    availability_zones = ["1", "2", "3"]
    vnet_subnet_id     = var.vnet_subnet_id
  }

  identity {
    type = "SystemAssigned"
  }

  kubernetes_version = var.kubernetes_version
  tags               = var.tags
} 