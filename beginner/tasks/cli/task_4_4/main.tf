resource "aws_s3_bucket" "main" {
  bucket = "learn-terraform-task-4-4-plan-file"

  tags = {
    Name        = "learn-terraform-task-4-4-plan-file"
    Environment = "dev"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"
  }
}
