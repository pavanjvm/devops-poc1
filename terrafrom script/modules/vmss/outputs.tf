output "id" {
  description = "The ID of the VMSS."
  value       = azurerm_linux_virtual_machine_scale_set.this.id
}

output "name" {
  description = "The name of the VMSS."
  value       = azurerm_linux_virtual_machine_scale_set.this.name
} 