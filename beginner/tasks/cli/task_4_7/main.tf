# TODO: Write an aws_s3_bucket resource that uses the variable in its bucket name.
#
# Requirements:
#   - bucket name: "learn-terraform-task-4-7-${var.bucket_suffix}"
#   - label:       "main"
#   - tags:        Name, Environment ("dev"), Project, ManagedBy
#
# The Name tag should also use the variable:
#   Name = "learn-terraform-task-4-7-${var.bucket_suffix}"

resource "aws_s3_bucket" "main" {
  bucket = "learn-terraform-task-4-7-${var.bucket_suffix}"
  tags = {
    Name        = "learn-terraform-task-4-7-${var.bucket_suffix}"
    Environment = "dev"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"
  }
}