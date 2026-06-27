terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>6.0"
    }
  }
  backend "s3" {
    bucket       = "remote-state-daws90-dev"
    key          = "roboshop-vpc.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # Enables native S3 state locking
  }
}

provider "aws" {
  region = "us-east-1"
}