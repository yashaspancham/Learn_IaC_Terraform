# Topic: Terraform CLI — plan -out and terraform show (Task 4.4)
#
# Concept:
#   By default `terraform plan` shows you a plan but doesn't save it.
#   The `-out=<file>` flag saves the plan to a binary file so you can
#   apply it exactly later — nothing can change between plan and apply.
#
#   `terraform show <file>` lets you inspect a saved plan in human-readable form.
#   This is useful to review what will happen before committing to an apply.
#
# Why save a plan file?
#   - Guarantees that what you reviewed is exactly what gets applied
#   - Required in CI/CD pipelines (plan in one step, apply in another)
#   - Prevents surprises if infrastructure changes between plan and apply
#
# Task:
#   1. Run: terraform init
#   2. Run: terraform plan -out=tfplan
#   3. Look at the tfplan file directly (hint: it's binary — try `cat tfplan`)
#   4. Run: terraform show tfplan
#   5. Compare the `show` output to the original `plan` output — are they the same?
#   6. Do NOT apply yet — that's Task 4.5.
#   7. Write observations below.
#
# Commands:
#   terraform init
#   terraform plan -out=tfplan
#   cat tfplan           (observe it's binary/unreadable)
#   terraform show tfplan
#
# Questions to answer:
#   - What does the tfplan file look like if you open it directly?
#   - What does `terraform show tfplan` give you?
#   - Why is saving a plan file better than just running `terraform apply` directly?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
# - If I try to open tfplan directly on vscode it tells me that this file cannot be displayed
#   if I use cat cmd it will show text of teraform plan with lot of @s
# - terraform show tfplan will display the tfplan like cat cmd but proper
# - This will record/document what will happen when terraform apply is run and 
#   only this will be applied 