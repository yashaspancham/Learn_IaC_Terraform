# Topic: Resources — Apply + destroy (Task 3.2)
#
# This file holds the terraform {} block.

# TODO: Write the terraform {} block with required_version and required_providers for AWS ~> 6.0.

terraform {
  required_version = ">= 1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}