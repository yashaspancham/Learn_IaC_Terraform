# Topic: HCL Syntax — terraform validate & syntax errors (Task 1.8)
#
# Concept:
#   `terraform validate` checks your configuration for syntax and logical errors
#   without making any API calls to AWS. Run it before every plan.
#
#   Common errors it catches:
#   - Unclosed strings or braces
#   - Invalid argument names
#   - Missing required arguments
#   - Wrong value types
#
# Syntax:
#   terraform validate
#
# Example error output:
#   │ Error: Invalid expression
#   │   on main.tf line 3, in locals:
#   │    3:   name = "hello
#   │ Expected the start of an expression, but found an invalid expression token.
#
# Task:
#   Write a locals block with a deliberate syntax error — an unclosed string.
#   Run: terraform validate — read the error carefully.
#   Fix the error.
#   Run: terraform validate again — confirm it passes.
#
# Commands:
#   terraform validate

# TODO: Write a locals block with at least 2 valid arguments and 1 broken one (unclosed string).
#       Run validate, read the error, fix it, validate again.


locals {
        env = "test"
}