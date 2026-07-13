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
      tls_version      = optional(string)
    }))
    user_managed_https = optional(object({
      key_vault_secret_id = string
      tls_version         = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cdn_endpoint_custom_domains : (
        length(v.host_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

