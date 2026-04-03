# Topic: Resources — Apply + destroy (Task 3.2)
#
# Concept:
#   terraform apply creates the resources defined in your config.
#   terraform destroy removes all resources managed by the current state.
#   Always verify in the AWS console after apply, then destroy when done.
#
# Task:
#   Use the same aws_s3_bucket from Task 3.1 (or write a new one).
#   Run: terraform apply
#   Verify the bucket exists in the AWS console (S3 → Buckets).
#   Run: terraform destroy
#   Verify the bucket is gone.
#
# Commands:
#   terraform init
#   terraform apply
#   terraform destroy

# TODO: Write an aws_s3_bucket resource with a unique bucket name and required tags.

resource "aws_s3_bucket" "learn" {
  bucket = "this-will-be-created-fwegaewrgs"
  tags = {
    Name         = "first-learn-bucket"
    Environament = "learn"
    Project      = "for-learning"
    ManagedBy    = "terraform"
  }
}