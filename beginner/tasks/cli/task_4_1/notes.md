# Topic: Terraform CLI — Init in Empty Directory (Task 4.1)
#
# Concept:
#   `terraform init` is always the first command you run in a Terraform project.
#   But what happens if you run it in a directory with NO .tf files at all?
#   It still succeeds — it just has nothing to initialize. Understanding this
#   output helps you recognize what init is actually doing when it DOES have work.
#
# What init does:
#   1. Reads all .tf files to find required_providers
#   2. Downloads provider plugins into .terraform/
#   3. Creates or updates .terraform.lock.hcl
#
#   With no .tf files, steps 1-3 have nothing to act on — so it finishes
#   immediately with a minimal success message.
#
# Task:
#   1. This directory has no .tf files (only this notes.md).
#   2. Run: terraform init
#   3. Read the output carefully — what does it say?
#   4. Check what (if anything) was created in this directory after init.
#   5. Write your observations as a comment at the bottom of this file.
#
# Commands:
#   terraform init
#   ls -la   (to see what was created)
#
# Questions to answer:
#   - Did init succeed or fail?
#   - Was a .terraform/ directory created?
#   - Was a .terraform.lock.hcl created?
#   - What does the output tell you about what init is doing?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
# I ran terraform it said terraform initialized in an empty directory 
# and I can start working by making terraform configuration file
# also no folders are created

