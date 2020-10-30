provider "aws" {
  region = "us-east-2"
}


data "aws_vpc" "default" {
  default = true
}


resource "aws_instance" "one" {
  ami = "ami-03657b56516ab7912"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraTesting"
  }
}
