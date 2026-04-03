# Topic: Providers — Lock file (Task 2.8)
#
# Concept:
#   When you run terraform init with a pinned version, Terraform writes
#   .terraform.lock.hcl to record the exact version it selected.
#   If you remove the version pin, Terraform picks the latest available version.
#   The lock file ensures everyone on a team uses the same provider version.
#
# Task:
#   Step 1: Write required_providers WITHOUT a version pin (omit the version line).
#           Run terraform init.
#           Open .terraform.lock.hcl — what version did it pick?
#
#   Step 2: Re-add version = "~> 6.0" to the required_providers block.
#           Run terraform init again.
#           Observe how the lock file changes.
#
# Commands:
#   terraform init
#   cat .terraform.lock.hcl

# TODO: Write the terraform block with required_providers for AWS — NO version pin first.
#       Run terraform init, inspect .terraform.lock.hcl.
#       Then add the version pin and run terraform init again.
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