
output "this" {
  value = {

    # inputs
    "notion"     = local.cidr_notation
    "no_subnets" = local.no_subnets

    # calc
    "count" = local.count

    # outputs
    "subnet_mask_mask"     = local.subnet_mask_mask
    "subnet_mask_notation" = local.subnet_mask_notation
    "hosts_subnet"         = local.hosts_subnet
    "infra_subnets"        = local.infra_subnets
    "dev_subnets"          = local.dev_subnets
    "int_subnets"          = local.int_subnets
    "prod_subnets"         = local.prod_subnets
    "subnets"              = local.subnets
  }
}
