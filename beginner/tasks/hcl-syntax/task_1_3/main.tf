# Topic: HCL Syntax — String interpolation (Task 1.3)
#
# Concept:
#   HCL supports string interpolation using the ${} syntax.
#   You can embed any expression inside a string with ${ expression }.
#
# Syntax:
#   "${local.some_value}-suffix"
#   "prefix-${local.env}-${local.region}"
#
# Example:
#   locals {
#     env         = "dev"
#     bucket_name = "myapp-${local.env}-data"
#   }
#   # bucket_name evaluates to: "myapp-dev-data"
#
# Task:
#   Write a locals block with:
#   - An environment variable (e.g. "dev")
#   - A project name variable
#   - A third local that combines both using interpolation (e.g. "project-env")
#
#   Run: terraform init && terraform console
#   Evaluate the interpolated value in the console.
#
# Commands:
#   terraform init
#   terraform console

# TODO: Write a locals block with an environment, a project name, and an interpolated third value.

locals {
  env          = "dev"
  project_name = "our_project"
  feeling      = "I need to disable vscode's ai auto complete I hate it. anyhow-> ${local.project_name}-${local.env}"
}