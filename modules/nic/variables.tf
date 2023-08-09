variable "subnet_id" {
    type = string
}

variable "nic_name" {
  type = map(string)
  default = {
    "Name" = "Primary-interface"
  }
  
}

variable "pri_ip" {
  type = list(string)
  default = ["10.0.1.10"]
  
}

