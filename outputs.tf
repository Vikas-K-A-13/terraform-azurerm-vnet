output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.this.name
}

output "subnet_ids" {
  description = "IDs of all subnets created"
  value       = { for k, s in azurerm_subnet.this : k => s.id }
}