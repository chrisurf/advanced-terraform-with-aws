module "aws_vpc" {
  source     = "../../../modules/aws_vpc"
  cidr_block = "10.10.0.0/24"
}

module "aws_subnet" {
  source = "../../../modules/aws_subnet"

  vpc_id     = module.aws_vpc.this.id
  cidr_block = "10.10.0.0/26"

  tags = {
    Name = "Main"
  }
}

output "vpc" {
  value = module.aws_vpc.this
}