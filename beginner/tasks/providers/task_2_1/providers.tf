# Topic: Providers — Provider init (Task 2.1)
#
# Concept:
#   The provider block tells Terraform which cloud/service to talk to.
#   The required_providers block inside terraform {} pins the version.
#   Running terraform init downloads the provider plugin into .terraform/.
#
# Syntax:
#   terraform {
#     required_providers {
#       aws = {
#         source  = "hashicorp/aws"
#         version = "~> 6.0"
#       }
#     }
#   }
#
#   provider "aws" {
#     region = "ap-south-1"
#   }
#
# Task:
#   Write a providers.tf with:
#   - A terraform {} block containing required_providers for AWS pinned to ~> 6.0
#   - A provider "aws" block with a hardcoded region
#
#   Then run:
#     terraform init
#     ls .terraform/
#     ls .terraform/providers/
#
#   Observe what gets created inside .terraform/.
#
# Commands:
#   terraform init
#   ls .terraform/
#   ls .terraform/providers/

# TODO: Write the terraform block with required_providers for AWS pinned to ~> 6.0.
# TODO: Write the provider "aws" block with region = "ap-south-1".


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