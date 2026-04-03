# Topic: Resources — prevent_destroy (Task 3.8)
#
# Concept:
#   The lifecycle meta-argument lets you control how Terraform handles a resource.
#   prevent_destroy = true makes Terraform refuse to destroy the resource,
#   even if you run terraform destroy. This is a safety net for critical resources.
#
# Syntax:
#   resource "aws_s3_bucket" "main" {
#     bucket = "my-bucket"
#
#     lifecycle {
#       prevent_destroy = true
#     }
#   }
#
# Task:
#   Step 1: Write an aws_s3_bucket with lifecycle { prevent_destroy = true }.
#           Apply it.
#           Run: terraform destroy — observe the error.
#
#   Step 2: Remove the lifecycle block.
#           Run: terraform destroy — confirm it succeeds.
#
# Commands:
#   terraform init
#   terraform apply
#   terraform destroy   (step 1 — expect error)
#   terraform destroy   (step 2 — after removing lifecycle block)

# TODO: Write an aws_s3_bucket with lifecycle { prevent_destroy = true }.
#       Apply, attempt destroy, observe error.
#       Remove lifecycle block, destroy successfully.

resource "aws_s3_bucket" "create_s3_bucket" {
  bucket = "unique-s3-bucket-name-hrferjnge"

#   lifecycle {
#     prevent_destroy = true
#   }
  tags = {
    Name        = "unique-s3-bucket-name-hrferjnge"
    Environment = "learn"
    Project     = "learn"
    ManagedBy   = "terraform"
  }

}