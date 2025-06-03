output "vnet_id" {
  value = module.vnet.id
}

output "subnet_id" {
  value = module.subnet.id
}

output "nsg_id" {
  value = module.nsg.id
}

output "route_table_id" {
  value = module.route_table.id
}

output "nat_gateway_id" {
  value = module.nat_gateway.id
}

output "application_gateway_id" {
  value = module.application_gateway.id
}

output "lb_id" {
  value = module.lb.id
}

output "vmss_id" {
  value = module.vmss.id
}

output "aks_name" {
  value = module.aks.name
}

output "aks_kube_config" {
  value     = module.aks.kube_config
  sensitive = true
} 