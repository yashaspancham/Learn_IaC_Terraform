# Topic: Providers — Region argument (Task 2.2)
#
# Concept:
#   The provider block accepts arguments specific to that provider.
#   For AWS, region is required — it tells Terraform which AWS region to target.
#   This can be hardcoded, from a variable, or from an environment variable (AWS_DEFAULT_REGION).
#
# Syntax:
#   provider "aws" {
#     region = "ap-south-1"
#   }
#
# Task:
#   Write a providers.tf with the AWS provider block.
#   Set the region argument using a hardcoded string.
#   Run terraform init and terraform validate.
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write the terraform block with required_providers for AWS pinned to ~> 6.0.
# TODO: Write the provider "aws" block with region = "ap-south-1" as a hardcoded string.

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}