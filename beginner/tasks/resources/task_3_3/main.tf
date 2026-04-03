# Topic: Resources — Resource references (Task 3.3)
#
# Concept:
#   Resources can reference attributes of other resources using the syntax:
#     resource_type.resource_name.attribute
#
#   This creates an implicit dependency — Terraform knows to create the bucket
#   before creating the versioning config, because it needs the bucket's id.
#
# Syntax:
#   resource "aws_s3_bucket_versioning" "main" {
#     bucket = aws_s3_bucket.main.id
#
#     versioning_configuration {
#       status = "Enabled"
#     }
#   }
#
# Task:
#   Write two resources:
#   1. aws_s3_bucket with a unique name and tags
#   2. aws_s3_bucket_versioning that references the bucket using aws_s3_bucket.<name>.id
#
#   Run: terraform init && terraform apply
#   Verify versioning is enabled in the AWS console (S3 → bucket → Properties).
#   Run: terraform destroy
#
# Commands:
#   terraform init
#   terraform apply
#   terraform destroy

# TODO: Write an aws_s3_bucket resource.
# TODO: Write an aws_s3_bucket_versioning resource that references the bucket's id.

resource "aws_s3_bucket" "create_s3_bucket" {
  bucket = "versioning-learn-bucket-unique-name-12345"
  tags = {
    Name        = "versioning-learn-bucket"
    Environment = "learn"
    Project     = "for_learn"
    ManagedBy   = "terraform"
  }
}


resource "aws_s3_bucket_versioning" "add_s3_versioning" {
  bucket = aws_s3_bucket.create_s3_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}