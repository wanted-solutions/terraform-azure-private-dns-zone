# terraform-module-template

Repository template for Terraform module.

> If you'd like to check module metadata usage in detail you can do it [here](./examples-module-metadata/README.md). Remove this quote and whole directory before publishing your module.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_zone.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_dns_zone_name"></a> [dns\_zone\_name](#input\_dns\_zone\_name) | The name of the DNS zone | `string` | n/a | yes |
| <a name="input_metadata"></a> [metadata](#input\_metadata) | Module metadata object to give user possibility to override default module values. | <pre>object({<br>    default_tags             = optional(map(string), {})<br>    resource_timeouts        = optional(map(map(string)), {})<br>    validator_error_messages = optional(map(string), {})<br>    validator_expressions    = optional(map(string), {})<br>  })</pre> | `{}` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the resource group | `string` | n/a | yes |
| <a name="input_soa_record"></a> [soa\_record](#input\_soa\_record) | The SOA record | <pre>object({<br>    email        = string<br>    expire_time  = optional(number, 2419200)<br>    minimum_ttl  = optional(number, 10)<br>    refresh_time = optional(number, 3600)<br>    retry_time   = optional(number, 300)<br>    ttl          = optional(number, 3600)<br>    tags         = optional(map(string), {})<br>  })</pre> | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key value pairs of custom tags to be applied to the module resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_dns_zone"></a> [private\_dns\_zone](#output\_private\_dns\_zone) | The private DNS zone |
<!-- END_TF_DOCS -->

## Usage

> ADD content about usage