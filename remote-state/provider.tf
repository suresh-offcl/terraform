terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.90.0"
    }
  }
  
  backend "s3" {
    bucket         = "81s-khanishk-remote-state"
    key            = "remote-state-khani"
    region         = "us-east-1"
    dynamodb_table = "81s-locking"
  }

}

provider "aws" {
  # Configuration options
   region = "us-east-1"
}