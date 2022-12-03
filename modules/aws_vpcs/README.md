# Terraform Module: AWS VPC

The `aws_vpc` module provides a way to manage Amazon Virtual Private Clouds (VPCs).

## Description

The AWS VPC module allows you to create and configure Amazon Virtual Private Clouds, which are isolated virtual networks within the AWS cloud. VPCs provide a way to control and customize network settings such as IP addressing, subnets, and routing tables.

## Usage

To use this module, customize the following code examples in your Terraform configuration:

### Basic Usage

Create a simple VPC with a specified CIDR block:

```hcl
module "aws_vpc" {
  source = "../../modules/aws_vpcs"
  vpcs = [
    {
      name       = "Main"
      cidr_block = "172.16.0.0/24"
    }
  ]
}
```

Please note that this overview provides a simplified understanding of the AWS VPC module's capabilities. Be sure to refer to the official Terraform documentation for a comprehensive understanding of the available arguments and attributes.


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
| <a name="module_aws_vpcs"></a> [aws\_vpcs](#module\_aws\_vpcs) | ../aws_vpc | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enabled"></a> [enabled](#input\_enabled) | (Optional) This enables the module, the default is true. | `bool` | `true` | no |
| <a name="input_vpcs"></a> [vpcs](#input\_vpcs) | A list of objects representing VPC configurations. | <pre>list(object({<br>    name                                 = string<br>    cidr_block                           = string<br>    instance_tenancy                     = optional(string)<br>    ipv4_ipam_pool_id                    = optional(string)<br>    ipv4_netmask_length                  = optional(number)<br>    ipv6_cidr_block                      = optional(string)<br>    ipv6_ipam_pool_id                    = optional(string)<br>    ipv6_netmask_length                  = optional(number)<br>    ipv6_cidr_block_network_border_group = optional(string)<br>    enable_dns_support                   = optional(bool)<br>    enable_network_address_usage_metrics = optional(bool)<br>    enable_dns_hostnames                 = optional(bool)<br>    assign_generated_ipv6_cidr_block     = optional(bool)<br>    tags                                 = optional(map(string))<br>  }))</pre> | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | The list of AWS VPC Resources |
<!-- END_TF_DOCS -->