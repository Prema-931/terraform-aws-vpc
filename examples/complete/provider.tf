terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"        # AWS provider version, not terraform version
    }
  }


     backend "s3" {
      bucket = "prema76-remote-state"
      key    = "vpc-test"
      region = "us-east-1"
      dynamodb_table = "prema76-locking"

  }

}  

provider "aws" {
    region = "us-east-1"
}
