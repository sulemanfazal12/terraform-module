resource "aws_instance" "foo" {
  ami           = var.ami_id
  instance_type = var.instance_type
  network_interface {
    network_interface_id = var.nic_id
    device_index         = 0
  }

  tags = {
    Name = var.ec2_name["Name"]
  }
}


