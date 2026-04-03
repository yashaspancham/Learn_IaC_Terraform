# Topic: Providers — Clean providers.tf (Task 2.10)
#
# Concept:
#   This is the production-grade pattern for provider configuration.
#   providers.tf holds ONLY the provider block.
#   versions.tf holds the terraform {} block.
#   Region comes from a variable — never hardcoded in real configs.
#
# Style guide requirements:
#   - provider "aws" block only in this file
#   - region = var.aws_region (not hardcoded)
#   - No terraform {} block here
#
# Task:
#   Write a clean providers.tf that follows the style guide exactly.
#   The terraform {} block goes in versions.tf.
#   The variable declaration goes in variables.tf.
#   Run terraform init and terraform validate — both must pass clean.
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write ONLY the provider "aws" block.
#       Use region = var.aws_region (reference the variable, don't hardcode).

provider "aws" {
  region = var.aws_region
}