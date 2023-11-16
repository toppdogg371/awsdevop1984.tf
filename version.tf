# Terraform Block
terraform {
  required_version = ">= 1.5.5"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"  
  profile = "default" 