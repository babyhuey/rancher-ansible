variable region {
  default = "us-east-1"
}

resource "aws_instance" "rancher_server" {
  count = "${length(split(",", var.admin_private_subnets))}"
ami = "${var.rancher_server_ami}"
instance_type = "${var.rancher_server_instance_type}"
subnet_id = "${var.admin_private_id}"
vpc_security_group_ids = [
  "${aws_security_group.rancher_server.id}"
]
root_block_device {
  volume_type           = "standard"
  volume_size           = 50
  delete_on_termination = true
}
key_name = "segmint"

tags {
  Environment = "Admin"
//  Role = "rancher_server"
  Name = "rancher_server"
}
//  ebs_block_device {
//    device_name = "/dev/xvdf"
//    volume_size = 20
//    volume_type = "gp2"
//    delete_on_termination = false
//  }
}