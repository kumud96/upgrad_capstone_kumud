terraform {
  backend "s3" {
    bucket = "upgrad-kumud-capstone"
    key    = "path/state"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.63.0"
    }
 }
}
provider "aws" {
  region = "us-east-1"
  access_key = "xxxxxxxxxxx"
  secret_key = "xxxxxxxxxxxx"
}
