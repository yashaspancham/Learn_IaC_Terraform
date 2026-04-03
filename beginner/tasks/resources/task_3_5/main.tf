# Topic: Resources — Attribute references (Task 3.5)
#
# Concept:
#   After a resource is created, Terraform exposes its attributes.
#   You can reference these attributes in other resources.
#   This is how resources are wired together without hardcoding values.
#
# Syntax:
#   resource "aws_s3_bucket_public_access_block" "main" {
#     bucket = aws_s3_bucket.main.id   # references the id attribute of the bucket
#
#     block_public_acls       = true
#     block_public_policy     = true
#     ignore_public_acls      = true
#     restrict_public_buckets = true
#   }
#
# Task:
#   Write two resources:
#   1. aws_s3_bucket
#   2. aws_s3_bucket_public_access_block that references aws_s3_bucket.<name>.id
#
#   Run: terraform init && terraform plan
#   Observe that the bucket id is referenced — not hardcoded.
#   Do NOT apply.
#
# Commands:
#   terraform init
#   terraform plan

# TODO: Write an aws_s3_bucket resource.
# TODO: Write an aws_s3_bucket_public_access_block that references the bucket's id attribute.

resource "aws_s3_bucket" "s3_create_bucket" {
  bucket = "this-is-for-learning-terraform"
  tags = {
    Name        = "this-is-for-learning-terraform"
    Environment = "Learning"
    Project     = "for_learning"
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket_public_access_block" "s3_public_access_block" {
  bucket = aws_s3_bucket.s3_create_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}