locals {
  parameter_prefix = "system"
  type             = "network"
  parameter_name   = "/${local.parameter_prefix}/${local.type}"
}

module "state_vpc" {
  source = "../../../modules/aws_ssm_parameter"
  name   = "${local.parameter_name}/vpc"
  type   = "String"
  value  = jsonencode(module.aws_vpc.this)
}

module "state_subnet" {
  source = "../../../modules/aws_ssm_parameter"
  name   = "${local.parameter_name}/subnet"
  type   = "String"
  value  = jsonencode(module.aws_subnet.this)
}