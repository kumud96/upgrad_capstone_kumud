terraform {
  backend "s3" {
    bucket = "s3-capstone-kumud"
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
  access_key = "AKIAVXOFDIQUXD5YPYU3"
  secret_key = "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"
}
