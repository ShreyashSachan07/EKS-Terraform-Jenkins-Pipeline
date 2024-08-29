provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket         = "terraform-remote-state-4900"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
  #  dynamodb_table = "Lock-Files"
    encrypt        = true
  }
} 