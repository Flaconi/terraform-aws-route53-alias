# Terraform AWS Route53 Alias

This module will create Route53 Alias record

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.26 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_zone.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_aliases"></a> [aliases](#input\_aliases) | List of aliases | `list(string)` | n/a | yes |
| <a name="input_target_dns_name"></a> [target\_dns\_name](#input\_target\_dns\_name) | DNS name of target resource (e.g. ALB, ELB) | `string` | n/a | yes |
| <a name="input_target_zone_id"></a> [target\_zone\_id](#input\_target\_zone\_id) | ID of target resource (e.g. ALB, ELB) | `string` | n/a | yes |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| <a name="input_evaluate_target_health"></a> [evaluate\_target\_health](#input\_evaluate\_target\_health) | Set to true if you want Route 53 to determine whether to respond to DNS queries | `bool` | `false` | no |
| <a name="input_parent_zone_id"></a> [parent\_zone\_id](#input\_parent\_zone\_id) | ID of the hosted zone to contain this record  (or specify `parent_zone_name`) | `string` | `""` | no |
| <a name="input_parent_zone_name"></a> [parent\_zone\_name](#input\_parent\_zone\_name) | Name of the hosted zone to contain this record (or specify `parent_zone_id`) | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hostnames"></a> [hostnames](#output\_hostnames) | List of DNS records |
| <a name="output_parent_zone_id"></a> [parent\_zone\_id](#output\_parent\_zone\_id) | ID of the hosted zone to contain the records |
| <a name="output_parent_zone_name"></a> [parent\_zone\_name](#output\_parent\_zone\_name) | Name of the hosted zone to contain the records |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
