output "id" {
  description = "The ID of the NAT Gateway."
  value       = azurerm_nat_gateway.this.id
}

output "name" {
  description = "The name of the NAT Gateway."
  value       = azurerm_nat_gateway.this.name
} 