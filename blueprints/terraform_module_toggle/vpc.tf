module "aws_vpc" {
  source  = "../../modules/aws_vpcs"
  enabled = local.modules.aws-vpc.enabled
  vpcs = [
    {
      name       = "${local.env}-${local.project}"
      cidr_block = local.cidr
    }
  ]
}