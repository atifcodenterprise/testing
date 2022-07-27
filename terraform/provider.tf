provider "aws" {
  region     = "eu-west-1"
  shared_credentials_files = ["~/.aws/credentials"]
}

terraform {
  backend "s3" {
    bucket         = "atlantis-terraform-state-test" //s3 bucket name
    key            = "atlantis/terraform.tfstate"
    region         = "eu-west-1"
  }
}
