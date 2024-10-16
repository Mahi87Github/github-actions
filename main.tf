# Providers
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "test" {
ami           = "ami-0e86e20dae9224db8"
instance_type = "t2.micro"

}

#tags = {
#Name = var.ec2_name
#}

