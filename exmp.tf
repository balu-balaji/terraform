provider "aws" {
  access_key = "AKIAJWHRDZHHRL7U5LIQ"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_vpc" "vpc_tuto" {
  cidr_block = "172.31.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "TestVPC123"
  }
  }
  resource "aws_s3_bucket" "b" {
    bucket = "my_tf_test_bucket123456789"
    acl = "private"

    tags {
        Name = "My bucket"
        Environment = "Dev"
    }
}
resource "aws_instance" "example" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"

}
