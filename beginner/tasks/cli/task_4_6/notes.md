# Topic: Terraform CLI — plan -target (Task 4.6)
#
# Concept:
#   By default, `terraform plan` evaluates ALL resources in your config.
#   The `-target=<resource>` flag scopes the plan to a single resource
#   (and any resources it depends on).
#
#   Syntax:
#     terraform plan -target=aws_s3_bucket.bucket_alpha
#
#   When would you use -target?
#     - Emergency fix: you need to patch one resource without touching others
#     - Large configs: you want a faster feedback loop on one resource
#     - Debugging: isolate a single resource's plan output
#
#   WARNING: HashiCorp discourages routine use of -target. It can leave
#   your config and state out of sync if used carelessly. It's a scalpel
#   for specific situations, not a normal workflow.
#
# Task:
#   1. Write both resources in main.tf (see TODO)
#   2. Run: terraform init
#   3. Run: terraform plan                              (observe: both resources planned)
#   4. Run: terraform plan -target=aws_s3_bucket.bucket_alpha   (observe: only alpha)
#   5. Compare the two plan outputs — what changed?
#   6. Do NOT apply.
#   7. Write observations below.
#
# Commands:
#   terraform init
#   terraform plan
#   terraform plan -target=aws_s3_bucket.bucket_alpha
#
# Questions to answer:
#   - How many resources appeared in the full plan vs. the targeted plan?
#   - Did Terraform show any warning when you used -target? What did it say?
#   - When would you actually reach for -target in real work?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
# - 2 vs 1
# - yes it said to use -target when trying to fix erros and not use it regulary
# - use -taget for fixing erros or mistakes


