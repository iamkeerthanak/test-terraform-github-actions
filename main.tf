terraform {
 required_providers {
   aws = {
     source = "hashicorp/aws"
   }
 }
 
 backend "s3" {
   region = "ap-south-1"
   key    = "terraform.tfstate"
 }
}
 
provider "aws" {
 region = "ap-south-1"
}
 
resource "aws_instance" "test_instance" {
 ami           = "ami-07ffb2f4d65357b42"
 instance_type = "t2.micro"
 tags = {
   Name = "test_instance"
 }
}
