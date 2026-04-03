# Topic: Providers — Provider alias (Task 2.6)
#
# Concept:
#   You can define multiple configurations of the same provider using aliases.
#   This is used to deploy resources in multiple regions from a single config.
#
# Syntax:
#   provider "aws" {
#     region = "ap-south-1"
#   }
#
#   provider "aws" {
#     alias  = "us_east"
#     region = "us-east-1"
#   }
#
#   # Reference the alias in a resource:
#   resource "aws_instance" "web" {
#     provider = aws.us_east
#     ...
#   }
#
# Task:
#   Write two provider blocks:
#   - Default AWS provider for ap-south-1
#   - Aliased AWS provider for us-east-1 (alias = "us_east")
#
#   Write a resource in main.tf that explicitly uses provider = aws.us_east.
#   Validate only — do NOT apply.
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write the terraform block with required_providers for AWS pinned to ~> 6.0.
# TODO: Write the default provider "aws" block with region = "ap-south-1".
# TODO: Write a second provider "aws" block with alias = "us_east" and region = "us-east-1".

terraform {
  required_version = ">= 1.7.0"
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

provider "aws" {
  region = "us-east-1"
  alias  = "us_east"
}