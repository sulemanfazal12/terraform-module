module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    vpc_tags = var.vpc_tags
}

module "subnet" {
    source = "./modules/subnet"
    vpc_id = module.vpc.vpc_id
    cidr_block = var.cidr_block
    subnet_name = var.subnet_name
}

module "sg" {
    source = "./modules/sg"
    sg_name = var.sg_name
    vpc_id= module.vpc.vpc_id
}

module "nic" {
    source = "./modules/nic"
    subnet_id = module.subnet.sub_id
    pri_ip = var.pri_ip
    nic_name= var.nic_name
}

module "ec2" {
    source = "./modules/ec2"
    ami_id = var.ami_id
    instance_type = var.instance_type
    nic_id = module.nic.nic_id
    ec2_name = var.ec2_name
}