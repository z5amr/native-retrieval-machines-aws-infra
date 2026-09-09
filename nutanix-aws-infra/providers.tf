terraform {
  required_version = ">= 1.5.0"
  required_providers {
    nutanix = {
      source  = "nutanix/nutanix"
      version = "~> 1.9.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "nutanix" {
  username = var.nutanix_user
  password = var.nutanix_password
  endpoint = var.nutanix_endpoint
}

provider "aws" {
  region = var.aws_region
}