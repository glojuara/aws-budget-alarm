terraform {

  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.26.0"
    }
  }

  backend "s3" {
    bucket = "glojuara-terraform-remote-state"
    key    = "aws-budget/terraform.tfstate"
    region = "us-east-1"
  }

}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      owner      = "glojuara"
      managed-by = "terraform"
    }
  }
}