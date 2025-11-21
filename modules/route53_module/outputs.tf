output "hosted_zone_id" {
  value = aws_route53_zone.this.zone_id
}

output "record_fqdn" {
  value = aws_route53_record.a_record.fqdn
}
