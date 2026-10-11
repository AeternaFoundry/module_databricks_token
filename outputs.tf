output "tokens_id" {
  description = "Map of id values across all tokens, keyed the same as var.tokens except keys with no id are omitted"
  value       = { for k, v in databricks_token.tokens : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tokens_comment" {
  description = "Map of comment values across all tokens, keyed the same as var.tokens except keys with no comment are omitted"
  value       = { for k, v in databricks_token.tokens : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "tokens_creation_time" {
  description = "Map of creation_time values across all tokens, keyed the same as var.tokens except keys with no creation_time are omitted"
  value       = { for k, v in databricks_token.tokens : k => v.creation_time if v.creation_time != null }
}
output "tokens_expiry_time" {
  description = "Map of expiry_time values across all tokens, keyed the same as var.tokens except keys with no expiry_time are omitted"
  value       = { for k, v in databricks_token.tokens : k => v.expiry_time if v.expiry_time != null }
}
output "tokens_lifetime_seconds" {
  description = "Map of lifetime_seconds values across all tokens, keyed the same as var.tokens except keys with no lifetime_seconds are omitted"
  value       = { for k, v in databricks_token.tokens : k => v.lifetime_seconds if v.lifetime_seconds != null }
}
output "tokens_provider_config" {
  description = "Map of provider_config values across all tokens, keyed the same as var.tokens except keys with no provider_config are omitted"
  value       = { for k, v in databricks_token.tokens : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "tokens_token_id" {
  description = "Map of token_id values across all tokens, keyed the same as var.tokens except keys with no token_id are omitted"
  value       = { for k, v in databricks_token.tokens : k => v.token_id if v.token_id != null && length(v.token_id) > 0 }
}
output "tokens_token_value" {
  description = "Map of token_value values across all tokens, keyed the same as var.tokens except keys with no token_value are omitted"
  value       = { for k, v in databricks_token.tokens : k => v.token_value if v.token_value != null && length(v.token_value) > 0 }
  sensitive   = true
}

