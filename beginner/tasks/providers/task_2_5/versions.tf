# Topic: Providers — versions.tf split (Task 2.5)
#
# Concept:
#   This file holds the terraform {} block — required_version and required_providers.
#   The provider "aws" block lives in providers.tf.
#   Terraform picks up all .tf files in the directory automatically.
#
# Task:
#   Write the terraform {} block here with:
#   - required_version = ">= 1.7.0"
#   - required_providers for AWS pinned to ~> 6.0
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write the terraform {} block with required_version and required_providers.
#       Do NOT put the provider "aws" block here — that goes in providers.tf.


terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}