vpc_cidr = "10.0.0.0/16"

vpc_tags = {
     Name = "Dev-VPC"
}

cidr_block = "10.0.1.0/24"

subnet_name = {
    Name = "tf-subnet"
}

sg_name = {
     Name = "Dev-tf-sg"
}

nic_name = {
   Name = "Dev-Primary-interface" 
}

pri_ip = ["10.0.1.10"]

ami_id = "ami-053b0d53c279acc90"

instance_type = "t2.micro"

# here in the congig folder you can have dev.tfvars, test.tfvars and prod.tfvars 
# When you run the commad use 

     // terraform apply --var-file="config/dev.tfvars"
     // terraform apply --var-file="config/test.tfvars"