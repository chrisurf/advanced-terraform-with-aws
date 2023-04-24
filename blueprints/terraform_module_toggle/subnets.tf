module "aws_subnet" {
  source = "../../modules/aws_subnets"
  enabled = local.modules.aws-subnet.enabled
  subnets = [
    {
      name       = "${local.env}-${local.project}"
      vpc_id     = module.aws_vpc.this["${local.env}-${local.project}"].this.id
      cidr_block = local.cidr
    }
  ]
}