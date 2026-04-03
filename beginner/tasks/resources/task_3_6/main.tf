# Topic: Resources — In-place vs replacement (Task 3.6)
#
# Concept:
#   When you change a resource argument, Terraform will either:
#   - Update in-place (~) — change the resource without destroying it (e.g. tags)
#   - Force replacement (-/+) — destroy and recreate the resource (e.g. bucket name)
#
#   The plan output tells you which will happen. Read it carefully before applying.
#
# Task:
#   Step 1: Write an aws_s3_bucket and apply it.
#   Step 2: Change the tags (in-place update) — run plan and observe the ~ symbol.
#   Step 3: Change the bucket name (forces replacement) — run plan and observe -/+ symbol.
#           Do NOT apply step 3 — just read the plan.
#   Run: terraform destroy after step 2.
#
# Symbols in plan output:
#   + create
#   - destroy
#   ~ update in-place
#   -/+ destroy and recreate (forces replacement)
#
# Commands:
#   terraform init
#   terraform apply   (step 1)
#   terraform plan    (step 2 — after changing tags)
#   terraform plan    (step 3 — after changing bucket name)
#   terraform destroy

# TODO: Write an aws_s3_bucket resource with a unique name and required tags.
#       Apply it, then modify tags to see in-place update.
#       Then modify the bucket name to see forces replacement.


resource "aws_s3_bucket" "create_s3_bucket" {
  bucket = "my-unique-s3-bucket-name-42153245"
  tags = {
    Name        = "my-unique-s3-bucket-name-42153245"
    Project     = "for_learn"
    Environment = "for_learn"
    ManagedBy   = "Terraform"
  }
}