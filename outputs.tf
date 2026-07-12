output "cdn_endpoint_custom_domains_id" {
  description = "Map of id values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.id }
}
output "cdn_endpoint_custom_domains_cdn_endpoint_id" {
  description = "Map of cdn_endpoint_id values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.cdn_endpoint_id }
}
output "cdn_endpoint_custom_domains_cdn_managed_https" {
  description = "Map of cdn_managed_https values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.cdn_managed_https }
}
output "cdn_endpoint_custom_domains_host_name" {
  description = "Map of host_name values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.host_name }
}
output "cdn_endpoint_custom_domains_name" {
  description = "Map of name values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.name }
}
output "cdn_endpoint_custom_domains_user_managed_https" {
  description = "Map of user_managed_https values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.user_managed_https }
}

