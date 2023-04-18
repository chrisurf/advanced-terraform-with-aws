# Network CIDR range

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.9 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cidr_block"></a> [cidr\_block](#input\_cidr\_block) | (Required) the top level CIDR block. | `string` | n/a | yes |
| <a name="input_hosts_subnet"></a> [hosts\_subnet](#input\_hosts\_subnet) | (Required) the number of hosts available in each target subnet to be created. | `number` | `null` | no |
| <a name="input_no_subnets"></a> [no\_subnets](#input\_no\_subnets) | (Required) the number of subnets to be created. | `number` | n/a | yes |
| <a name="input_target_notation"></a> [target\_notation](#input\_target\_notation) | (Required) the target subnet mask notation of the new subnets to be created. | `number` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | n/a |
<!-- END_TF_DOCS -->