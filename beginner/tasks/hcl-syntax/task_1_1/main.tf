# Topic: HCL Syntax — The terraform block (Task 1.1)
#
# Concept:
#   The `terraform {}` block is the root configuration block.
#   It has no labels. It tells Terraform about itself — version constraints,
#   required providers, and backend config go here.
#
# Syntax:
#   terraform {
#     # settings go here
#   }
#
# Example:
#   terraform {
#     required_version = ">= 1.7.0"
#   }
#
# Task:
#   Write a terraform {} block with no contents.
#   Run: terraform init
#   Observe: what directories and files get created?
#
# Commands:
#   terraform init

# TODO: Write a terraform {} block.

terraform {
        required_version = ">= 1.7.0"
}