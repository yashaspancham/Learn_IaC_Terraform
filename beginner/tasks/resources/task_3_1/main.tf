# Topic: Resources — S3 bucket plan (Task 3.1)
#
# Concept:
#   A resource block declares a piece of infrastructure Terraform will manage.
#   Running terraform plan shows what Terraform WOULD do without making any changes.
#   Read the plan output carefully — it tells you what will be created, changed, or destroyed.
#
# Syntax:
#   resource "resource_type" "name" {
#     argument = "value"
#
#     tags = {
#       Key = "Value"
#     }
#   }
#
# Task:
#   Write an aws_s3_bucket resource with:
#   - A globally unique bucket name (use your name + random numbers)
#   - Required tags: Name, Environment, Project, ManagedBy
#
#   Run: terraform init && terraform plan
#   Read the plan output — understand what (known after apply) means.
#   Do NOT apply.
#
# Commands:
#   terraform init
#   terraform plan

# TODO: Write an aws_s3_bucket resource with a unique bucket name and required tags.

resource "aws_s3_bucket" "learn" {
  bucket = "hopefully-i-will-create-it-fwrgr"
  tags = {
    Name        = "hopefully-i-will-create-it-fwrgr"
    Environment = "learn"
    Project     = "learn"
    ManagedBy   = "terraform"
  }
}