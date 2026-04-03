# Topic: Providers — variables.tf (Task 2.10)
#
# This file holds all input variable declarations.
#
# TODO: Write a variable "aws_region" with:
#       - description
#       - type = string
#       - default = "ap-south-1"

variable "aws_region" {
  default     = "ap-south-1"
  description = "AWS region to host our infra in"
  type        = string
}