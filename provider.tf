terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
# Root User
provider "aws" {
  region     = "us-east-1"
  
}
