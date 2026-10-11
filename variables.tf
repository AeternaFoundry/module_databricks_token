variable "tokens" {
  description = <<EOT
Map of tokens, attributes below
Optional:
    - comment
    - creation_time
    - expiry_time
    - lifetime_seconds
    - token_id
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    comment          = optional(string)
    creation_time    = optional(number)
    expiry_time      = optional(number)
    lifetime_seconds = optional(number)
    token_id         = optional(string)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

