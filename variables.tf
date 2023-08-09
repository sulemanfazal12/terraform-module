variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  
}

variable "vpc_tags" {
  type    = map(string)
  default = {
    Name = "MyVPC"
    
  }
}


variable "cidr_block" {
  default = "10.0.1.0/24"
}

variable "subnet_name" {
  type = map(string)
  default = {
    Name = "tf-subnet"
  }
  
}


variable "sg_name" {
  type = map(string)
  default = {
    Name = "tf-sg"
  }
  
}


variable "nic_name" {
  type = map(string)
  default = {
     Name = "Primary-interface"
  }
  
}

variable "pri_ip" {
  type = list(string)
  default = ["10.0.1.10"]
  
}

variable "ec2_name" {
  type = map(string)
  default = {
    Name = "tf-instance"
  }
  
}

variable "ami_id" {
  default = "ami-053b0d53c279acc90"
}

variable "instance_type" {
  default = "t2.micro"
}

