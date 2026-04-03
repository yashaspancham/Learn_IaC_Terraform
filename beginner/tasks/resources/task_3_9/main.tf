# Topic: Resources — Parallel creation (Task 3.9)
#
# Concept:
#   When resources have no dependency on each other, Terraform creates them
#   in parallel to save time. You can see this in the plan output.
#   Terraform only serialises creation when there is a dependency (explicit or implicit).
#
# Task:
#   Write two completely independent aws_s3_bucket resources in this file.
#   They must have NO reference to each other and NO depends_on.
#
#   Run: terraform plan
#   Observe the Plan line — it will say "Plan: 2 to add".
#   During apply, both buckets are created simultaneously.
#
#   Run: terraform apply, then terraform destroy.
#
# Commands:
#   terraform init
#   terraform plan
#   terraform apply
#   terraform destroy

# TODO: Write two independent aws_s3_bucket resources with unique names and required tags.
#       No depends_on, no cross-references between them.

variable "Environment" {
  default     = "learn"
  type        = string
  description = "The environment for the S3 bucket"
}

variable "Project" {
  default     = "learn"
  type        = string
  description = "The project for the S3 bucket"
}

variable "ManagedBy" {
  default     = "terraform"
  type        = string
  description = "The entity managing the S3 bucket"
}

resource "aws_s3_bucket" "create_s3_bucket_1" {
  bucket = "unique-name-fnwjrnfe"

  tags = {
    Name        = "unique-name-fnwjrnfe"
    Environment = var.Environment
    Project     = var.Project
    ManagedBy   = var.ManagedBy
  }
}

resource "aws_s3_bucket" "create_s3_bucket_2" {
  bucket = "unique-name-cjnfwro"

  tags = {
    Name        = "unique-name-cjnfwro"
    Environment = var.Environment
    Project     = var.Project
    ManagedBy   = var.ManagedBy
  }
}