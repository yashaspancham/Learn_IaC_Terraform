# Topic: Terraform CLI — terraform destroy and dependency ordering (Task 4.8)
#
# Concept:
#   When you run `terraform destroy`, Terraform doesn't just delete resources
#   in random order. It reads the dependency graph and destroys in REVERSE
#   order — dependents are destroyed before the resources they depend on.
#
#   Example:
#     If resource B depends_on resource A:
#       Apply order:   A → B
#       Destroy order: B → A
#
#   This mirrors how creation works — you can't delete a foundation while
#   something is still built on top of it.
#
#   Terraform shows you the destroy plan before asking for confirmation.
#   Read it carefully: it lists every resource it will delete and in what order.
#
# Task:
#   1. Write main.tf with two S3 buckets (see TODOs)
#   2. Run: terraform init
#   3. Run: terraform apply
#      (confirm both buckets are created — note the creation order in output)
#   4. Run: terraform destroy
#      (read the plan carefully — note the destruction order)
#   5. Confirm both buckets are gone from the AWS console
#   6. Write observations below.
#
# Commands:
#   terraform init
#   terraform apply
#   terraform destroy
#
# Questions to answer:
#   - What order were the buckets created in?
#   - What order were the buckets destroyed in?
#   - How does the destroy order relate to the creation order?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
#  - primary was created first then replica
#  - replica first then primary
#  - reverse