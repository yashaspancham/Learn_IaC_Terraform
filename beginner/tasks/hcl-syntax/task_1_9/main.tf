# Topic: HCL Syntax — Comments (Task 1.9)
#
# Concept:
#   HCL supports three comment styles. All three are valid.
#   Use comments to explain *why* something is done, not *what* — the code shows what.
#
# Syntax:
#   # single-line hash comment       (most common in HCL)
#   // single-line double-slash      (also valid, less common)
#   /* multi-line block comment */   (for longer explanations)
#
# Example:
#   # This bucket is private — ACLs are managed via bucket policy, not ACL settings
#   resource "aws_s3_bucket" "assets" {
#     bucket = "my-assets"
#   }
#
#   // Equivalent comment style
#
#   /*
#     This resource exists because the default VPC was deleted.
#     We recreate it here to maintain consistency across accounts.
#   */
#
# Task:
#   Write a locals block with 3 arguments.
#   Add all three comment styles — one per argument.
#   Run: terraform validate — confirm all three are valid.
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write a locals block with 3 arguments, each annotated with a different comment style.

locals {
  env          = "test" #This file is for test env
  project_name = "test" //This is the project
  managed_by   = "terraform" /*The cloud is also managed by terraform*/
}