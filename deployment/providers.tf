terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.88.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 1.30.0"
    }
    time = {
      source  = "hashicorp/time"
      version = "~> 0.13.0"
    }
  }
  required_version = "~> 1.9.6"
}

provider "aws" {
  region = local.region

  default_tags {
    tags = {
      Project = local.full_name
    }
  }
}
