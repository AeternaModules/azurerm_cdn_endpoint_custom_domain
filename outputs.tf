output "cdn_endpoint_custom_domains" {
  description = "All cdn_endpoint_custom_domain resources"
  value       = azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains
}
output "cdn_endpoint_custom_domains_cdn_endpoint_id" {
  description = "List of cdn_endpoint_id values across all cdn_endpoint_custom_domains"
  value       = [for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : v.cdn_endpoint_id]
}
output "cdn_endpoint_custom_domains_cdn_managed_https" {
  description = "List of cdn_managed_https values across all cdn_endpoint_custom_domains"
  value       = [for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : v.cdn_managed_https]
}
output "cdn_endpoint_custom_domains_host_name" {
  description = "List of host_name values across all cdn_endpoint_custom_domains"
  value       = [for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : v.host_name]
}
output "cdn_endpoint_custom_domains_name" {
  description = "List of name values across all cdn_endpoint_custom_domains"
  value       = [for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : v.name]
}
output "cdn_endpoint_custom_domains_user_managed_https" {
  description = "List of user_managed_https values across all cdn_endpoint_custom_domains"
  value       = [for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : v.user_managed_https]
}

