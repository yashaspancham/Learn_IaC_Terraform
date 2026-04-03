# Topic: HCL Syntax — Nested blocks (Task 1.6)
#
# Concept:
#   Some resource arguments are not simple key=value pairs — they are blocks
#   nested inside the resource block. These represent sub-configurations.
#
# Syntax:
#   resource "resource_type" "name" {
#     top_level_arg = "value"
#
#     nested_block_name {
#       nested_arg = "value"
#     }
#   }
#
# Example:
#   resource "aws_instance" "web" {
#     ami           = "ami-abc123"
#     instance_type = "t2.micro"
#
#     metadata_options {
#       http_endpoint = "enabled"
#     }
#   }
#
# Task:
#   Write a terraform + provider + aws_instance resource block.
#   The instance must include an ebs_block_device nested block with:
#   - device_name
#   - volume_size
#   - volume_type
#   - encrypted = true
#
#   Do NOT apply. Run validate only.
#
# AMI for ap-south-1 (Amazon Linux 2023): ami-0f58b397bc5c1f2e8
#
# Commands:
#   terraform init
#   terraform validate

# TODO: Write the terraform block with required_providers for AWS.
# TODO: Write the provider "aws" block with region = "ap-south-1".
# TODO: Write an aws_instance resource with an ebs_block_device nested block.
# TODO: Add required tags: Name, Environment, Project, ManagedBy.

terraform {
        required_version = ">= 1.7.5"
}

provider "aws" {
        region = "ap-south-1"
}

resource "aws_instance" "web" {
        ami = "ami-02dfbd4ff395f2a1b"
        instance_type = "t2.micro"

        ebs_block_device {
        device_name = "/dev/sdh"
        volume_size = 8
        delete_on_termination = true
        encrypted = true                
        }
        tags = {
                name = "test"
                env = "test"
                managedby = "terraform"
        }
}