# Topic: Providers — AWS auth check (Task 2.3)
#
# Concept:
#   Terraform uses your AWS CLI credentials automatically.
#   It checks ~/.aws/credentials or environment variables (AWS_ACCESS_KEY_ID, etc).
#   Before running plan/apply, always confirm your identity with:
#     aws sts get-caller-identity
#
# Task:
#   1. Run: aws sts get-caller-identity
#      Confirm you see your Account ID, UserID, and ARN.
#
#   2. Write a providers.tf + a simple aws_s3_bucket resource in main.tf.
#      Run terraform plan — confirm Terraform can reach AWS and shows a valid plan.
#      Do NOT apply.
#
# Commands:
#   aws sts get-caller-identity
#   terraform init
#   terraform plan

# TODO: Write the terraform block with required_providers for AWS pinned to ~> 6.0.
# TODO: Write the provider "aws" block with region = "ap-south-1".

terraform {
  required_version = ">= 1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}


provider "aws" {
  region = "ap-south-1"
}