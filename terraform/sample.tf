provider "aws"{
    region = "ap-south-1"
}
resource "aws_instance" "myinstance" {
    ami = "ami-0f559c3642608c138"
    instance_type = "t3.micro"
    key_name = "abcd.pem"
    vpc_security_group_ids = [ "sg-0be6230f73360a65c" ]
    tags = {
      name = "aditya"
      Name = "myinstance"
      Environment = "dev"
    }
}