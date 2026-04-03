# Topic: Providers — versions.tf split (Task 2.5)
#
# Concept:
#   The style guide separates concerns into different files.
#   providers.tf  → provider "aws" {} block only
#   versions.tf   → terraform {} block with required_version and required_providers
#
#   Terraform merges all .tf files in a directory — it doesn't matter which file
#   a block lives in. This is purely about organisation.
#
# Task:
#   This file (providers.tf) should contain ONLY the provider "aws" block.
#   The terraform {} block goes in versions.tf (see that file).
#
#   Run terraform init — confirm both files are picked up.
#   Run terraform validate.
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write ONLY the provider "aws" block with region = "ap-south-1".
#       Do NOT put the terraform {} block here — that goes in versions.tf.


provider "aws" {
  region = "ap-south-1"
}