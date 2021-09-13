provider "aws" {
  access_key = "AKIA2J25OCGWWV5OMS64"
  secret_key = "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"
  region     = "us-east-2"
}
terraform {
  required_version = ">= 0.13"
  required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 3.0"
   }
 }
}


variable "env" {
  default = "prod"
}

resource "aws_vpc" "my_vpc" {
  count      = var.env == "prod" ? 1 : 0
  cidr_block = "10.2.0.0/16"
  //key_name = "key_pair_name"
  instance_tenancy = "default"
  tags = {
    Name    = "my_vpc"
    AppName = "Omkar_Vpc"
  }
}