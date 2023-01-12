locals {
  parameter_prefix = "system"
  type             = "network"
  parameter_name   = "/${local.parameter_prefix}/${local.type}"
}


data "aws_ssm_parameter" "vpc" {
  name = "${local.parameter_name}/vpc"
}

data "aws_ssm_parameter" "subnet" {
  name = "${local.parameter_name}/subnet"
}

output "vpc" {
  value = nonsensitive(jsondecode(data.aws_ssm_parameter.vpc.value))
}

output "subnet" {
  value = nonsensitive(jsondecode(data.aws_ssm_parameter.subnet.value))
}