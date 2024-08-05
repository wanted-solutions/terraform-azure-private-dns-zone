// This is perfect place for adding your module output data
output "private_dns_zone" {
  description = "The private DNS zone"
  value       = azurerm_private_dns_zone.this
}