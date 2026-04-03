# Topic: Providers — required_version (Task 2.4)
#
# Concept:
#   The required_version argument in the terraform {} block constrains which
#   versions of the Terraform CLI are allowed to run this config.
#   This prevents accidental use of outdated CLI versions in production.
#
# Syntax:
#   terraform {
#     required_version = ">= 1.7.0"
#   }
#
# Common operators:
#   = 1.7.0    — exact version only
#   >= 1.7.0   — minimum version
#   ~> 1.7.0   — allows 1.7.x only
#   ~> 1.7     — allows 1.x where x >= 7
#
# Task:
#   Add required_version = ">= 1.7.0" to the terraform {} block.
#   Run terraform validate — confirm it passes.
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write the terraform block with required_version = ">= 1.7.0" and required_providers for AWS.
# TODO: Write the provider "aws" block with region = "ap-south-1".

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
