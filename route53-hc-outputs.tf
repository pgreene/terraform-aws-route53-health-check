#output "id_object" {
#  value = {
#  for name in aws_route53_health_check.general:
#  name.id => name.fqdn
#  }
#}
#
#output "fqdn_object" {
#  value = {
#  for name in aws_route53_health_check.general:
#  name.fqdn => name.id
#  }
#}
#
#output "id" {
#  value = [
#  for name in aws_route53_health_check.general: name.id
#  ]
#}
#
#output "fqdn" {
#  value = [
#  for name in aws_route53_health_check.general: name.fqdn
#  ]
#}

output "id" {
  value = aws_route53_health_check.general.id
}

output "arn" {
  value = aws_route53_health_check.general.arn
}

output "fqdn" {
  value = aws_route53_health_check.general.fqdn
}
