# TODO: Write two S3 bucket resources where one depends on the other.
#
# Requirements:
#   Resource 1 — aws_s3_bucket, label "primary":
#     - bucket name: "learn-terraform-task-4-8-primary"
#     - tags: Name, Environment ("dev"), Project, ManagedBy
#
#   Resource 2 — aws_s3_bucket, label "replica":
#     - bucket name: "learn-terraform-task-4-8-replica"
#     - use depends_on to make it explicitly depend on the primary bucket
#     - tags: Name, Environment ("dev"), Project, ManagedBy
#
# The depends_on makes the dependency explicit so Terraform destroys
# in the correct reverse order: replica first, then primary.

resource "aws_s3_bucket" "primary" {
  bucket = "learn-terraform-task-4-8-primary"
  tags = {
    Name        = "learn-terraform-task-4-8-primary"
    Environment = "dev"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"
  }
}

resource "aws_s3_bucket" "replica" {
  bucket     = "learn-terraform-task-4-8-replica"
  depends_on = [aws_s3_bucket.primary]
  tags = {
    Name        = "learn-terraform-task-4-8-replica"
    Environment = "dev"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"
  }
}