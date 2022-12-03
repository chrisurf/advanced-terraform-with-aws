# Terraform Module: AWS Subnet

The `aws_subnet` module provides a module to manage a list of Amazon Virtual Private Cloud (VPC) subnets.

## Description

The AWS Subnet module enables you to create and manage subnets within an Amazon VPC. Subnets divide a VPC's IP address range into smaller segments, allowing you to isolate resources and control traffic flow.

## Usage

To use this module, customize the following code example in your Terraform configuration:

In this example, a subnet with the specified `cidr_block` is created within the VPC identified by `vpc_id`. The subnet is associated with the tag "Name" set to "Main".

```hcl
module "aws_subnet" {
  source = "../../modules/aws_subnets"

  subnets = [
    {
      name       = "Main"
      vpc_id     = module.aws_vpc.this.id
      cidr_block = "172.16.0.1/26"
    }
  ]
}
```




<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_subnets"></a> [aws\_subnets](#module\_aws\_subnets) | ../aws_subnet | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | (Optional) This enables the module, the default is true. | `bool` | `true` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | A list of objects representing subnet configurations. | <pre>list(object({<br>    name                                           = string<br>    vpc_id                                         = string<br>    assign_ipv6_address_on_creation                = optional(bool)<br>    availability_zone                              = optional(string)<br>    availability_zone_id                           = optional(string)<br>    cidr_block                                     = optional(string)<br>    customer_owned_ipv4_pool                       = optional(string)<br>    enable_dns64                                   = optional(bool)<br>    enable_lni_at_device_index                     = optional(number)<br>    enable_resource_name_dns_aaaa_record_on_launch = optional(bool)<br>    enable_resource_name_dns_a_record_on_launch    = optional(bool)<br>    ipv6_cidr_block                                = optional(string)<br>    ipv6_native                                    = optional(bool)<br>    map_customer_owned_ip_on_launch                = optional(bool)<br>    map_public_ip_on_launch                        = optional(bool)<br>    outpost_arn                                    = optional(string)<br>    private_dns_hostname_type_on_launch            = optional(string)<br>    tags                                           = optional(map(string))<br>    cidr_tag                                       = optional(bool, true)<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The list of AWS Subnet Resources |
<!-- END_TF_DOCS -->