variable "cdn_endpoint_custom_domains" {
  description = <<EOT
Map of cdn_endpoint_custom_domains, attributes below
Required:
    - cdn_endpoint_id
    - host_name
    - name
Optional:
    - cdn_managed_https (block):
        - certificate_type (required)
        - protocol_type (required)
        - tls_version (optional)
    - user_managed_https (block):
        - key_vault_secret_id (required)
        - tls_version (optional)
EOT

  type = map(object({
    cdn_endpoint_id = string
    host_name       = string
    name            = string
    cdn_managed_https = optional(object({
      certificate_type = string
      protocol_type    = string
      tls_version      = optional(string, "TLS12")
    }))
    user_managed_https = optional(object({
      key_vault_secret_id = string
      tls_version         = optional(string, "TLS12")
    }))
  }))
}

