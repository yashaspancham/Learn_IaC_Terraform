# Topic: Terraform CLI — terraform output (Task 4.9)
#
# Concept:
#   After a `terraform apply`, Terraform stores output values in state.
#   You can retrieve them at any time — without re-running a plan — using:
#
#     terraform output                    <- prints ALL outputs
#     terraform output <output_name>      <- prints ONE output value
#
#   Outputs are defined in your .tf files using `output` blocks:
#
#     output "bucket_name" {
#       value = aws_s3_bucket.main.bucket
#     }
#
#   Why outputs matter:
#     - Share values between modules (parent passes outputs to child)
#     - Expose values to CI/CD pipelines (e.g., bucket name, instance IP)
#     - Quick inspection without opening the console
#
#   Common output attributes for S3:
#     - .bucket   — the bucket name
#     - .arn      — the full ARN (e.g., arn:aws:s3:::my-bucket)
#     - .id       — same as bucket name for S3
#
# Task:
#   1. Write main.tf with the S3 resource and two output blocks (see TODOs)
#   2. Run: terraform init
#   3. Run: terraform apply
#   4. Run: terraform output
#      (observe: both outputs printed)
#   5. Run: terraform output bucket_name
#      (observe: only the bucket name value, no labels)
#   6. Run: terraform output bucket_arn
#   7. Run: terraform destroy
#   8. Write observations below.
#
# Commands:
#   terraform init
#   terraform apply
#   terraform output
#   terraform output bucket_name
#   terraform output bucket_arn
#   terraform destroy
#
# Questions to answer:
#   - What did `terraform output` (no args) print?
#   - What did `terraform output bucket_name` print — how is the format different?
#   - When would you use outputs in a real project?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
#