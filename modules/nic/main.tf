resource "aws_network_interface" "foo" {
  subnet_id   = var.subnet_id
  private_ips = var.pri_ip

  tags = {
    Name = var.nic_name["Name"]
  }
}


