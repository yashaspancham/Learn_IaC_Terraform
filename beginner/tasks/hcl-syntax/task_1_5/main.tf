# Topic: HCL Syntax — Lists and Maps (Task 1.5)
#
# Concept:
#   HCL supports two collection types as argument values:
#   - list  → ordered sequence, accessed by index [0], [1], ...
#   - map   → key-value pairs, accessed by key ["key"]
#
# Syntax:
#   list_arg = [value1, value2, value3]
#   map_arg  = {
#     key1 = "value1"
#     key2 = "value2"
#   }
#
# Example:
#   locals {
#     regions = ["us-east-1", "ap-south-1"]
#     tags    = {
#       Environment = "dev"
#       ManagedBy   = "Terraform"
#     }
#   }
#   # In console:
#   # local.regions[0]        => "us-east-1"
#   # local.tags["ManagedBy"] => "Terraform"
#
# Task:
#   Write a locals block with:
#   - A list of at least 3 port numbers
#   - A map of at least 3 tags
#
#   Run: terraform init && terraform console
#   Access a specific list item by index and a specific map value by key.
#
# Commands:
#   terraform init
#   terraform console

# TODO: Write a locals block with a list and a map.

locals {
  ports = ["8080", "3000", "5432"]
  tags = {
    env  = "dev"
    tool = "Terraform"
    app  = "cloud app"
  }
}