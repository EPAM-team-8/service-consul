resource "aws_route53_record" "record" {
  zone_id = data.aws_route53_zone.consul-zone.zone_id
  name = "consul.epam.one"
  type = "A"
  ttl  = "300"
  records = [aws_instance.Consul.public_ip]
}