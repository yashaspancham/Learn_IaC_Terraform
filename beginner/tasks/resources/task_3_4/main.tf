# Topic: Resources — depends_on (Task 3.4)
#
# Concept:
#   Terraform normally infers dependencies from resource references.
#   But sometimes you need an EXPLICIT dependency — when one resource must exist
#   before another even though there's no direct attribute reference.
#   Use the depends_on meta-argument for this.
#
# Syntax:
#   resource "aws_s3_bucket_versioning" "main" {
#     bucket = aws_s3_bucket.main.id
#
#     depends_on = [aws_s3_bucket.main]
#
#     versioning_configuration {
#       status = "Enabled"
#     }
#   }
#
# Task:
#   Write two resources:
#   1. aws_s3_bucket
#   2. aws_s3_bucket_versioning with an explicit depends_on = [aws_s3_bucket.<name>]
#
#   Run: terraform plan
#   Observe the plan output — Terraform shows the creation order.
#   Do NOT apply.
#
# Commands:
#   terraform init
#   terraform plan

# TODO: Write an aws_s3_bucket resource.
# TODO: Write an aws_s3_bucket_versioning resource with explicit depends_on.


resource "aws_s3_bucket" "create_s3_bucket" {
  bucket = "small-name-145325453"
  tags = {
    Name        = "small-name-145325453"
    Environment = "learn"
    Project     = "learn"
    ManagedBy   = "for_learning"
  }
}

resource "aws_s3_bucket_versioning" "add_versioning" {
  bucket = aws_s3_bucket.create_s3_bucket.id

  depends_on = [aws_s3_bucket.create_s3_bucket]

  versioning_configuration {
    status = "Enabled"
  }
}