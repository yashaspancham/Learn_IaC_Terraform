# TODO: Write TWO independent aws_s3_bucket resources.
#       You will then run `terraform plan -target` to scope the plan to only one of them.
#
# Requirements:
#   Resource 1:
#     - label:  "bucket_alpha"
#     - bucket: "learn-terraform-task-4-6-alpha"
#     - tags:   Name, Environment ("dev"), Project, ManagedBy
#
#   Resource 2:
#     - label:  "bucket_beta"
#     - bucket: "learn-terraform-task-4-6-beta"
#     - tags:   Name, Environment ("dev"), Project, ManagedBy
#
# Do NOT apply — plan only.

resource "aws_s3_bucket" "bucket_alpha" {
  bucket = "learn-terraform-task-4-6-alpha"
  tags = {
    Name        = "learn-terraform-task-4-6-alpha"
    Environment = "dev"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket" "bucket_beta" {
  bucket = "learn-terraform-task-4-6-beta"
  tags = {
    Name        = "learn-terraform-task-4-6-beta"
    Environment = "dev"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"
  }
}