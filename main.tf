resource "databricks_token" "tokens" {
  for_each = var.tokens

  comment          = each.value.comment
  creation_time    = each.value.creation_time
  expiry_time      = each.value.expiry_time
  lifetime_seconds = each.value.lifetime_seconds
  token_id         = each.value.token_id

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

