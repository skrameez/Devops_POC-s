provider "aws" {
  access_key = "AKIA2J25OCGWWV5OMS64"
  secret_key = "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"
  region     = "us-east-2"
}
terraform {
  backend "s3" {
    bucket = "mybucketomkar"
    key    = "path/to/my/key"
    region = "us-east-2"
    access_key = "AKIA2J25OCGWWV5OMS64"
    secret_key = "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"
  }
}

resource "aws_instance" "Demo" {
  ami           = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  //key_name = "key_pair_name"
  tags = {
    Name = "Demo"
  }
}
