locals {
  config         = module.workspace_config.this.spec
  env            = local.config.env
  project        = local.config.project
  cidr           = local.config.cidr
  aws_account_id = local.config.aws_account_id
  modules = { for m in local.config.modules : m.name => {
    enabled = m.enabled
    name    = m.name
    }
  }
}

module "workspace_config" {
  source = "../../modules/workspace_config"
}

output "config" {
  value = module.workspace_config.this
}