# Terraform Module: AWS Subnet

The `aws_subnet` module provides a resource to manage Amazon Virtual Private Cloud (VPC) subnets.

## Description

The AWS Subnet module enables you to create and manage subnets within an Amazon VPC. Subnets divide a VPC's IP address range into smaller segments, allowing you to isolate resources and control traffic flow.

## Usage

To use this module, customize the following code example in your Terraform configuration:

In this example, a subnet with the specified `cidr_block` is created within the VPC identified by `vpc_id`. The subnet is associated with the tag "Name" set to "Main".

```hcl
module "aws_subnet" {
  source = "../../modules/aws/resource/aws_subnet"

  vpc_id     = module.aws_vpc.main.this.id
  cidr_block = "172.16.0.1/26"

  tags = {
    Name = "Main"
  }
}
```




<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_subnet.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assign_ipv6_address_on_creation"></a> [assign\_ipv6\_address\_on\_creation](#input\_assign\_ipv6\_address\_on\_creation) | (Optional) Specify true to indicate that network interfaces created in the specified subnet should be assigned an IPv6 address. Default is false. | `bool` | `false` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | (Optional) AZ for the subnet. | `string` | `null` | no |
| <a name="input_availability_zone_id"></a> [availability\_zone\_id](#input\_availability\_zone\_id) | (Optional) AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use availability\_zone instead. | `string` | `null` | no |
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | (Optional) The IPv4 CIDR block for the subnet. | `string` | `null` | no |
| <a name="input_customer_owned_ipv4_pool"></a> [customer\_owned\_ipv4\_pool](#input\_customer\_owned\_ipv4\_pool) | (Optional) The customer owned IPv4 address pool. | `string` | `null` | no |
| <a name="input_enable_dns64"></a> [enable\_dns64](#input\_enable\_dns64) | (Optional) Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default is false. | `bool` | `false` | no |
| <a name="input_enable_lni_at_device_index"></a> [enable\_lni\_at\_device\_index](#input\_enable\_lni\_at\_device\_index) | (Optional) Indicates the device position for local network interfaces in this subnet. | `number` | `null` | no |
| <a name="input_enable_resource_name_dns_a_record_on_launch"></a> [enable\_resource\_name\_dns\_a\_record\_on\_launch](#input\_enable\_resource\_name\_dns\_a\_record\_on\_launch) | (Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default is false. | `bool` | `false` | no |
| <a name="input_enable_resource_name_dns_aaaa_record_on_launch"></a> [enable\_resource\_name\_dns\_aaaa\_record\_on\_launch](#input\_enable\_resource\_name\_dns\_aaaa\_record\_on\_launch) | (Optional) Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records.Default is false. | `bool` | `false` | no |
| <a name="input_ipv6_cidr_block"></a> [ipv6\_cidr\_block](#input\_ipv6\_cidr\_block) | (Optional) The IPv6 network range for the subnet, in CIDR notation. | `string` | `null` | no |
| <a name="input_ipv6_native"></a> [ipv6\_native](#input\_ipv6\_native) | (Optional) Indicates whether to create an IPv6-only subnet. | `bool` | `null` | no |
| <a name="input_map_customer_owned_ip_on_launch"></a> [map\_customer\_owned\_ip\_on\_launch](#input\_map\_customer\_owned\_ip\_on\_launch) | (Optional) Specify true to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. Default is false. | `bool` | `null` | no |
| <a name="input_map_public_ip_on_launch"></a> [map\_public\_ip\_on\_launch](#input\_map\_public\_ip\_on\_launch) | (Optional) Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is false. | `bool` | `false` | no |
| <a name="input_outpost_arn"></a> [outpost\_arn](#input\_outpost\_arn) | (Optional) The Amazon Resource Name (ARN) of the Outpost. | `string` | `null` | no |
| <a name="input_private_dns_hostname_type_on_launch"></a> [private\_dns\_hostname\_type\_on\_launch](#input\_private\_dns\_hostname\_type\_on\_launch) | (Optional) The type of hostnames to assign to instances in the subnet at launch. | `string` | `"ip-name"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the resource. | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | The VPC ID. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | All attribute of the Subnet. |
<!-- END_TF_DOCS -->