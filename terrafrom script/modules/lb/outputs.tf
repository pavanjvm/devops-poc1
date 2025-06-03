output "id" {
  description = "The ID of the Load Balancer."
  value       = azurerm_lb.this.id
}

output "name" {
  description = "The name of the Load Balancer."
  value       = azurerm_lb.this.name
} 