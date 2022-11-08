<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_env"></a> [env](#input\_env) | (Required) The given environment. | `string` | `""` | no |
| <a name="input_file_extention"></a> [file\_extention](#input\_file\_extention) | (Optional) The config file extention json, yaml or yml. The default is yaml. | `string` | `"yaml"` | no |
| <a name="input_ignore"></a> [ignore](#input\_ignore) | (Optional) Ignore this environment. The default is set to default. | `string` | `"default"` | no |
| <a name="input_path"></a> [path](#input\_path) | (Optional) The path to the config file. | `string` | `"./environments/"` | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | (Optional) he config file prefix | `string` | `""` | no |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | (Optional) The config file sufix | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this"></a> [this](#output\_this) | Retuns the environment config. |
<!-- END_TF_DOCS -->