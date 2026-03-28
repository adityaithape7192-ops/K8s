provider "aws" {
  region = var.rg
}
terraform {
  backend "s3" {
    bucket = "terraform1112"
    region = "ap-south-1"
    key = "terraform1112"
  }
}
resource "aws_instance" "myinstance" {
  ami = var.ami_id
  instance_type = var.instance_type_mumbai
  key_name = var.key_name
  vpc_security_group_ids = ["mysg"]
  availability_zone = var.az
  tags = {
    name  = "aditya"
    Name = "myinstance"
    Environment = "dev"
  }
}