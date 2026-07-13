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
  # --- Unconfirmed validation candidates, derived from azurerm_cdn_endpoint_custom_domain's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    validate.CdnEndpointCustomDomainName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: cdn_endpoint_id
  #   source:    [from validate.EndpointID] !ok
  # path: cdn_endpoint_id
  #   source:    [from validate.EndpointID] err != nil
  # path: host_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: cdn_managed_https.certificate_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: cdn_managed_https.protocol_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: cdn_managed_https.tls_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: user_managed_https.tls_version
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: user_managed_https.key_vault_secret_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: user_managed_https.key_vault_secret_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
}

