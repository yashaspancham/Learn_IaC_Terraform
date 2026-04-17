# Topic: Terraform CLI — apply from a saved plan file (Task 4.5)
#
# Concept:
#   In Task 4.4 you saved a plan with `-out=tfplan` and inspected it.
#   Now you will apply it. When you run `terraform apply tfplan`, Terraform
#   applies EXACTLY what was in that plan — no confirmation prompt, no drift.
#
#   Compare this to `terraform apply` (no plan file):
#     - Terraform re-runs the plan internally
#     - It shows you the plan and asks: "Do you want to perform these actions?"
#     - If infrastructure changed between your plan and apply, the apply
#       may do something different from what you reviewed
#
#   With a saved plan file, what you reviewed IS what gets applied.
#   That's why CI/CD pipelines always use: plan → approve → apply tfplan.
#
# Task:
#   1. Write the resource in main.tf (see TODO)
#   2. Run: terraform init
#   3. Run: terraform plan -out=tfplan
#   4. Run: terraform show tfplan   (review what will happen)
#   5. Run: terraform apply tfplan  (no prompt — it just applies)
#   6. Verify the S3 bucket exists in the AWS console
#   7. Run: terraform destroy       (clean up)
#   8. Write observations below.
#
# Commands:
#   terraform init
#   terraform plan -out=tfplan
#   terraform show tfplan
#   terraform apply tfplan
#   terraform destroy
#
# Questions to answer:
#   - Did `terraform apply tfplan` ask for confirmation? Why not?
#   - What is the difference between `terraform apply` and `terraform apply tfplan`?
#   - Why do CI/CD pipelines prefer the plan-file approach?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
# - no, because we it was the same as terraform plan
# terraform apply will ask for yes/no and the changes are not approved but
# terraform apply tfplan will directly apply without asking for confirmation
# - one is documenting the change and applying exactly what was in terraform plan