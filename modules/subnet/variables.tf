
// this value is depend on the other folder resource so type like this
variable "vpc_id" {
   type = string                                 
}

variable "cidr_block" {
  default = "10.0.1.0/24"
}

variable "subnet_name" {
  type = map(string)
  default = {
    "Name" = "tf-subnet"
  }
  
}