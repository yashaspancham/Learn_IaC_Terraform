# Topic: Providers — Inspect lock file (Task 2.9)
#
# Concept:
#   .terraform.lock.hcl is created by terraform init.
#   It records exactly which provider version was installed and its checksums.
#
#   Fields to understand:
#   - version     — the exact version installed (e.g. 6.35.1)
#   - constraints — the version constraint from required_providers (e.g. ~> 6.0)
#   - hashes      — cryptographic checksums to verify the provider binary hasn't changed
#
#   You SHOULD commit .terraform.lock.hcl to version control when working in a team.
#   This ensures everyone uses the exact same provider version.
#
# Task:
#   Run terraform init on a valid providers.tf.
#   Open .terraform.lock.hcl and identify:
#   - What is the exact version installed?
#   - What constraint is recorded?
#   - How many hashes are listed and what are they for?
#
# Commands:
#   terraform init
#   cat .terraform.lock.hcl

# TODO: Write the terraform block with required_providers for AWS pinned to ~> 6.0.
# TODO: Write the provider "aws" block with region = "ap-south-1".
# TODO: Run terraform init, then read and understand .terraform.lock.hcl.

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