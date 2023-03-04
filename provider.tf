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
  access_key = secrets.AWS_ACCESS_KEY_ID
  secret_key = secrets.SECRET_ACCESS_KEY
}
