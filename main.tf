#
# This code was adapted from the `terraform-aws-route53-alias` module from Cloud Posse, LLC on 2018-09-18.
# Available here: https://github.com/cloudposse/terraform-aws-route53-alias/
#

data "aws_route53_zone" "default" {
  count   = var.enabled ? signum(length(compact(var.aliases))) : 0
  zone_id = var.parent_zone_id
  name    = var.parent_zone_name
}

resource "aws_route53_record" "default" {
  count   = var.enabled ? length(compact(var.aliases)) : 0
  zone_id = data.aws_route53_zone.default[0].zone_id
  name    = compact(var.aliases)[count.index]
  type    = "A"

  alias {
    name                   = var.target_dns_name
    zone_id                = var.target_zone_id
    evaluate_target_health = var.evaluate_target_health
  }
}
