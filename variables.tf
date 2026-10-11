variable "site_verification_web_resources" {
  description = <<EOT
Map of site_verification_web_resources, attributes below
Required:
    - verification_method
    - site (block):
        - identifier (required)
        - type (required)
Optional:
    - deletion_policy
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    verification_method = string
    deletion_policy     = optional(string)
    site = object({
      identifier = string
      type       = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

