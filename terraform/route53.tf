resource "aws_route53_record" "rancher-server" {
  zone_id = "${var.private_route53_id}"
  name = "rancher.segmint.net"
  type = "A"
  ttl = "300"
}