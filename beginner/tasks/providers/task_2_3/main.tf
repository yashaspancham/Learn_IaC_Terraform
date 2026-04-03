# TODO: Write a simple aws_s3_bucket resource with a unique name and required tags.
#       Run terraform plan — confirm Terraform can reach AWS.
#       Do NOT apply.


resource "aws_s3_bucket" "first_terraform_bucket" {
  bucket = "first-terraform-bucket-4525425"
  tags = {
    Name        = "first-terraform-bucket-4525425"
    Environment = "learn"
    ManagedBy   = "terraform"
    Project     = "learn"
  }
} 