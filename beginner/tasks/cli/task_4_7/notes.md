# Topic: Terraform CLI — inline variable override with -var (Task 4.7)
#
# Concept:
#   Variables can be set in multiple ways (in order of precedence, highest last):
#     1. Default value in variables.tf
#     2. terraform.tfvars file
#     3. TF_VAR_<name> environment variable
#     4. -var flag at the CLI  ← highest precedence
#
#   The -var flag lets you override any variable at runtime without touching any file.
#   Syntax:
#     terraform apply -var="bucket_suffix=myvalue"
#
#   This is useful for:
#     - CI/CD pipelines injecting environment-specific values
#     - Quick one-off overrides during development
#     - Testing different variable values without changing files
#
# Task:
#   1. Write variables.tf and main.tf (see TODOs)
#   2. Run: terraform init
#   3. Run: terraform plan
#      (observe: bucket name uses the default value "default")
#   4. Run: terraform plan -var="bucket_suffix=override"
#      (observe: bucket name now uses "override")
#   5. Apply with the override: terraform apply -var="bucket_suffix=override"
#   6. Verify the bucket exists in AWS console — check the name
#   7. Run: terraform destroy -var="bucket_suffix=override"
#      (you must pass the var on destroy too, so Terraform knows which resource to target)
#   8. Write observations below.
#
# Commands:
#   terraform init
#   terraform plan
#   terraform plan -var="bucket_suffix=override"
#   terraform apply -var="bucket_suffix=override"
#   terraform destroy -var="bucket_suffix=override"
#
# Questions to answer:
#   - What bucket name appeared in the plan WITHOUT -var?
#   - What bucket name appeared in the plan WITH -var="bucket_suffix=override"?
#   - Why do you need to pass -var on destroy as well?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
# - learn-terraform-task-4-7-default
# - learn-terraform-task-4-7-override
# - so we target learn-terraform-task-4-7-override and not learn-terraform-task-4-7-default