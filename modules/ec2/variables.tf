variable "ec2_name" {
  type = map(string)
  default = {
    "Name" = "tf-instance"
  }
  
}

variable "ami_id" {
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "nic_id" {
   type = string
}