resource "aws_ssm_parameter" "this" {
  name        = var.name
  type        = var.type
  value       = var.value != null ? var.value : var.insecure_value
  description = var.description
  key_id      = var.key_id
  #  overwrite       = var.overwrite
  tags            = merge(var.provider_default_tags, var.tags)
  tier            = var.tier
  allowed_pattern = var.allowed_pattern
  data_type       = var.data_type
}
