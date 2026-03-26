provider "aws"{
    region = "ap-south-1"
}
terraform {
  backend "s3" {
    bucket = "terraform1112"
    region = "ap-south-1"
    }
}
resource "aws_instance" "myinstance" {
    ami = "ami-0f559c3642608c138"
    instance_type = "t3.micro"
    key_name = "id_rsa"
    vpc_security_group_ids = [ "sg-0be6230f73360a65c" ]
    availability_zone = "ap-south-1"
    tags = {
      name = "aditya"
      Name = "myinstance"
      Environment = "dev"
    }
}