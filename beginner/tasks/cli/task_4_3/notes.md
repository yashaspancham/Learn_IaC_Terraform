# Topic: Terraform CLI — terraform validate (Task 4.3)
#
# Concept:
#   `terraform validate` checks that your configuration is syntactically correct
#   and internally consistent. It does NOT contact AWS — it only reads your .tf files.
#
#   Two kinds of errors it catches:
#     1. Syntax errors — missing quotes, unclosed braces, wrong argument types
#     2. Schema errors — unknown arguments, wrong resource types, missing required args
#
#   It does NOT catch:
#     - Wrong AWS credentials
#     - Resources that already exist in AWS
#     - Logic errors (e.g., wrong CIDR block)
#
# Task:
#   This directory has a valid config. You will:
#     1. Run validate on the clean config — read the success output.
#     2. Introduce an error into main.tf (instructions below).
#     3. Run validate again — read the error output carefully.
#     4. Fix the error and validate clean again.
#
# Steps:
#   1. Run: terraform init
#   2. Run: terraform validate   <-- note the success message
#   3. Open main.tf and introduce this error:
#        Change `locals {` to `locals_broken {`
#   4. Run: terraform validate   <-- read the error carefully
#   5. Fix main.tf (change it back to `locals {`)
#   6. Run: terraform validate   <-- confirm it passes clean again
#   7. Write observations below.
#
# Questions to answer:
#   - What did the success output look like?
#   - What did the error output look like? What information did it give you?
#   - How is validate different from fmt?
#   - How is validate different from plan?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
# - Success! the configuration is valid
# - It throws an Error, Unsupported block type then where the error happend
# - Validate checks for syntax and schema errors while fmt will format the files
# - Validate checks for syntax and schema errors while plan will explain what will change on the infra
