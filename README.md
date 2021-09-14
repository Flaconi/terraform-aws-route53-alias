# Terraform AWS Route53 Alias

This module will create Route53 Alias record

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |
| aws | >= 3 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aliases | List of aliases | `list(string)` | n/a | yes |
| target\_dns\_name | DNS name of target resource (e.g. ALB, ELB) | `string` | n/a | yes |
| target\_zone\_id | ID of target resource (e.g. ALB, ELB) | `string` | n/a | yes |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| evaluate\_target\_health | Set to true if you want Route 53 to determine whether to respond to DNS queries | `bool` | `false` | no |
| parent\_zone\_id | ID of the hosted zone to contain this record  (or specify `parent_zone_name`) | `string` | `""` | no |
| parent\_zone\_name | Name of the hosted zone to contain this record (or specify `parent_zone_id`) | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| hostnames | List of DNS records |
| parent\_zone\_id | ID of the hosted zone to contain the records |
| parent\_zone\_name | Name of the hosted zone to contain the records |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
