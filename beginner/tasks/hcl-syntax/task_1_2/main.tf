# Topic: HCL Syntax — Argument types (Task 1.2)
#
# Concept:
#   Arguments in HCL are typed. The three primitive types are:
#   - string  → "hello"
#   - number  → 42 or 3.14
#   - bool    → true or false
#
# Syntax:
#   locals {
#     arg_name = value
#   }
#
# Example:
#   locals {
#     app_name      = "my-app"  # string
#     replica_count = 3         # number
#     enable_https  = true      # bool
#   }
#
# Task:
#   Write a locals block with one string, one number, and one bool argument.
#   Run: terraform init
#   Then: terraform console
#   In the console, evaluate each local by typing its reference (e.g. local.your_arg)
#
# Commands:
#   terraform init
#   terraform console

# TODO: Write a locals block with a string, number, and bool argument.

locals {
        string_var = "test"
        number_var = 96
        bool_var = true
}