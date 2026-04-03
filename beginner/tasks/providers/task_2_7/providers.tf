# Topic: Providers — Broken version constraint (Task 2.7)
#
# Concept:
#   If required_version doesn't match the installed Terraform CLI version,
#   terraform init will fail immediately with a clear error.
#   This is a safety net — it prevents running the wrong CLI version.
#
# Task:
#   Step 1: Set required_version = "= 0.12.0" (intentionally wrong).
#           Run terraform init — read the error carefully.
#
#   Step 2: Restore to required_version = ">= 1.7.0".
#           Run terraform init again — confirm it succeeds.
#
# Commands:
#   terraform init    (step 1 — expect failure)
#   terraform init    (step 2 — after fix, expect success)

# TODO: Write the terraform block with required_version = "= 0.12.0" first.
#       Run terraform init, read the error.
#       Then change it to ">= 1.7.0" and run terraform init again.
# TODO: Write the provider "aws" block with region = "ap-south-1".

terraform {
        required_version = "= 1.7.5"
}