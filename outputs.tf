output "cdn_endpoint_custom_domains_id" {
  description = "Map of id values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cdn_endpoint_custom_domains_cdn_endpoint_id" {
  description = "Map of cdn_endpoint_id values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.cdn_endpoint_id if v.cdn_endpoint_id != null && length(v.cdn_endpoint_id) > 0 }
}
output "cdn_endpoint_custom_domains_cdn_managed_https" {
  description = "Map of cdn_managed_https values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.cdn_managed_https if v.cdn_managed_https != null && length(v.cdn_managed_https) > 0 }
}
output "cdn_endpoint_custom_domains_host_name" {
  description = "Map of host_name values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.host_name if v.host_name != null && length(v.host_name) > 0 }
}
output "cdn_endpoint_custom_domains_name" {
  description = "Map of name values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cdn_endpoint_custom_domains_user_managed_https" {
  description = "Map of user_managed_https values across all cdn_endpoint_custom_domains, keyed the same as var.cdn_endpoint_custom_domains"
  value       = { for k, v in azurerm_cdn_endpoint_custom_domain.cdn_endpoint_custom_domains : k => v.user_managed_https if v.user_managed_https != null && length(v.user_managed_https) > 0 }
}

