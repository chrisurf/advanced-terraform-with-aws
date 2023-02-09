# Terraform Module: AWS SSM Parameter

The `aws_ssm_parameter` module allows you to manage an AWS Systems Manager (SSM) Parameter.

## Description

This module enables the creation and management of an AWS Systems Manager Parameter, which is used to store configuration data, including secrets, in a variety of formats.

## Usage

To use this module, customize the following example in your Terraform configuration:

```hcl
module "ssm_parameter" {
  source = "../modules/aws_ssm_parameter"

  name  = "/my/parameter"
  type  = "String"
  value = "myValue"
  // Other optional variables can be added here
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
| [aws_ssm_parameter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_pattern"></a> [allowed\_pattern](#input\_allowed\_pattern) | (Optional) Regular expression used to validate the parameter value. | `string` | `null` | no |
| <a name="input_data_type"></a> [data\_type](#input\_data\_type) | (Optional) Data type of the parameter. | `string` | `null` | no |
| <a name="input_description"></a> [description](#input\_description) | (Optional) Description of the parameter. | `string` | `null` | no |
| <a name="input_insecure_value"></a> [insecure\_value](#input\_insecure\_value) | (Optional) Value of the parameter, not marked as sensitive. | `string` | `null` | no |
| <a name="input_key_id"></a> [key\_id](#input\_key\_id) | (Optional) KMS key ID or ARN for encrypting a SecureString. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Required) Name of the parameter. | `string` | n/a | yes |
| <a name="input_overwrite"></a> [overwrite](#input\_overwrite) | (Optional, Deprecated) Overwrite an existing parameter. | `bool` | `null` | no |
| <a name="input_provider_default_tags"></a> [provider\_default\_tags](#input\_provider\_default\_tags) | Default tags provided by the provider. | `map(string)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) Map of tags to assign to the object. | `map(string)` | `{}` | no |
| <a name="input_tier"></a> [tier](#input\_tier) | (Optional) Parameter tier to assign to the parameter. | `string` | `null` | no |
| <a name="input_type"></a> [type](#input\_type) | (Required) Type of the parameter. | `string` | n/a | yes |
| <a name="input_value"></a> [value](#input\_value) | (Optional) Value of the parameter, marked as sensitive. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | All attributes of the SSM Parameter. |
<!-- END_TF_DOCS -->