provider "aws" {
  region = "ap-southeast-1"
}

#terraform {
#  backend "s3" {
#    bucket         = "test-fadhil-bucket-lambda-220920211239"
#    key            = "test_s3/terraform.tfstate"
#    region         = "ap-southeast-1"
#  }
#}


resource "aws_s3_bucket" "test" {
  bucket = "test-fadhil-151220210925"
  acl    = "private"

  tags = {
    Name        = "test-fadhil-151220210925"
    Environment = "testing"
  }
}
