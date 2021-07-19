terraform {
  backend "s3"{
    region = "us-east-2"
    bucket = "epam-terraform-remote-state"
    dynamodb_table = "terraform-lock"
    key  = "consul/state.tfstate"
    encrypt = true
  }
}

provider "aws" {
  profile                 = "default"
  region                  = "us-east-2"
}