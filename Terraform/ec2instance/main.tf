provider "aws" {
  access_key = "AKIAYDDANIL2MDMGBL45"
  secret_key = "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"
  region     = "us-east-2"
}

resource "aws_instance" "Demo" {
  ami           = "ami-00399ec92321828f5"
  instance_type = "t2.micro"
  key_name = "key_pair_name"
  tags = {
    Name = "Demo"
  }
}
