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

service "aws_ec2" "test" {
ami           = "ami-0e86e20dae9224db8"
instance_type = "t2.micro"

}
