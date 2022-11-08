locals {
  config         = module.workspace_config.this.spec
  env            = local.config.env
  project        = local.config.project
  aws_account_id = local.config.aws_account_id
}

module "workspace_config" {
  source = "../../modules/workspace_config"
}

output "config" {
  value = module.workspace_config.this
}