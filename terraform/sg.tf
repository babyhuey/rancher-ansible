resource "aws_security_group" "rancher_server" {
  name = "Rancher Server"
  description = "Security group rules for Rancher Servers"

  vpc_id = "$${admin_vpc}"

  ingress {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["${var.admin_cidr}"]
  }

  ingress {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["${var.dev_cidr}"]
  }

  egress {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}