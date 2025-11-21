resource "aws_route53_zone" "this" {
  name = var.domain_name

  tags = merge(
    var.common_tags,
    {
      Name = "${var.project}-${var.env}-hosted-zone"
    }
  )
}

resource "aws_route53_record" "a_record" {
  zone_id = aws_route53_zone.this.zone_id
  name    = var.record_name
  type    = "A"
  ttl     = var.ttl
  records = var.records
}
