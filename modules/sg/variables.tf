variable "vpc_id" {
   type = string                                 
}

variable "sg_name" {
  type = map(string)
  default = {
    "Name" = "tf-sg"
  }
  
}