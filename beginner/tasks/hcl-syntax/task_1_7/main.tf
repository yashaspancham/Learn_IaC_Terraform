# Topic: HCL Syntax — terraform fmt (Task 1.7)
#
# Concept:
#   `terraform fmt` automatically reformats .tf files to the canonical HCL style.
#   It fixes: indentation, spacing around =, alignment of arguments within a block.
#   It does NOT change logic — only formatting.
#
# Syntax:
#   terraform fmt            # formats current directory
#   terraform fmt -recursive # formats all subdirectories too
#   terraform fmt -diff      # shows what would change without writing
#   terraform fmt -check     # exits non-zero if formatting is needed (used in CI)
#
# Example (before fmt):
#   locals {
#   env="dev"
#     project =    "learn"
#   }
#
# Example (after fmt):
#   locals {
#     env     = "dev"
#     project = "learn"
#   }
#
# Task:
#   Write a locals block with at least 4 arguments but format them badly on purpose.
#   (wrong indentation, missing spaces around =, misaligned values)
#   Run: terraform fmt
#   Then inspect the file — what did it fix?
#   Run: terraform validate to confirm it's still valid.
#
# Commands:
#   terraform fmt
#   terraform validate

# TODO: Write a locals block with at least 4 arguments but format them badly on purpose.
#       (wrong indentation, missing spaces around =, misaligned values)
#       Then run terraform fmt and observe what changes.


locals {
  env          = "test"
  project_name = "terraform-learn-${local.env}"
  region   = "ap-south-1"
  resource = ["ec2", "s3", "rds", "lambda"]
} 