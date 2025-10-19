terraform {
  required_providers {
    aws = {
      source  = "aws"
      version = "~> 5.0"
    }
    random = {
      source  = "random"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = var.state_bucket
    key            = "${var.environment}/terraform.tfstate"
    region         = var.aws_region
    dynamodb_table = var.lock_table
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

