# Topic: Resources — Invalid argument (Task 3.7)
#
# Concept:
#   terraform validate checks that your config is syntactically correct AND
#   that all arguments are valid for the resource type.
#   If you use an argument that doesn't exist, validate will catch it.
#
# Task:
#   Step 1: Write an aws_s3_bucket with a deliberately wrong argument name.
#           For example: use "bucket_name" instead of "bucket".
#           Run: terraform validate — read the error carefully.
#
#   Step 2: Fix the argument name.
#           Run: terraform validate — confirm it passes.
#
# Commands:
#   terraform init
#   terraform validate   (step 1 — expect error)
#   terraform validate   (step 2 — after fix)

# TODO: Write an aws_s3_bucket with a wrong argument name first.
#       Run validate, read the error.
#       Then fix it and validate again.


resource "aws_s3_bucket" "create_s3_bucket" {
  bucket = "unique-s3-bucket-name-hrferjnge"

  tags = {
    Name        = "unique-s3-bucket-name-hrferjnge"
    Environment = "learn"
    Project     = "learn"
    ManagedBy   = "terraform"
  }
}