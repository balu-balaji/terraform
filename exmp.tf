provider "aws" {
  access_key = "AKIAJTRVGKE22ZPYWUKA"
  secret_key = "kpyhxxOX4O9neniIq4woG2ObAEooKcyVj5qEOs1M"
  region     = "us-east-1"
}


resource "aws_instance" "example1" {
  ami           = "ami-0d729a60"
  instance_type = "t2.micro"

}
