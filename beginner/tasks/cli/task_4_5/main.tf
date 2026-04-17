# TODO: Write an aws_s3_bucket resource with a unique name and tags.
#       This is the resource you will plan and then apply from a saved plan file.
#
# Requirements:
#   - bucket name: "learn-terraform-task-4-5-apply"
#   - tags: Name, Environment, Project, ManagedBy

resource "aws_s3_bucket" "learn_terraform_task_4_5_apply" {
  bucket = "learn-terraform-task-4-5-apply"

  tags = {
    Name        = "learn-terraform-task-4-5-apply"
    Environment = "learn"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"

  }
}