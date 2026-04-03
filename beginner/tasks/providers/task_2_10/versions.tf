# Topic: Providers — Clean versions.tf (Task 2.10)
#
# This file holds the terraform {} block.
# required_version and required_providers belong here.
#
# TODO: Write the terraform {} block with:
#       - required_version = ">= 1.7.0"
#       - required_providers for AWS pinned to ~> 6.0


terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}