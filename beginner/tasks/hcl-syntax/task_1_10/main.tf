# Topic: HCL Syntax — Full recap (Task 1.10)
#
# Concept:
#   This task combines everything from tasks 1.1–1.9 into a single, clean file.
#   The goal is to write idiomatic HCL from scratch, formatted correctly.
#
# Requirements:
#   - terraform {} block with required_providers for AWS (pinned to ~> 5.0)
#   - provider "aws" block with region
#   - locals block containing:
#       - A string
#       - A number
#       - A bool
#       - A list
#       - A map (used as tags)
#       - An interpolated value referencing other locals
#       - A heredoc string
#   - One resource block (aws_instance) with:
#       - A nested ebs_block_device block
#       - Tags using merge() and local.common_tags
#   - All three comment styles used at least once
#
#   Run: terraform fmt && terraform validate
#   Both must pass with zero errors or warnings.
#
# Style guide reminders:
#   - snake_case for all names
#   - Align = signs within blocks
#   - One blank line between blocks
#   - Tags on every resource: Name, Environment, Project, ManagedBy
#
# AMI for ap-south-1 (Amazon Linux 2023): ami-0f58b397bc5c1f2e8
#
# Commands:
#   terraform init
#   terraform fmt
#   terraform validate

# TODO: Write the terraform block.
# TODO: Write the provider block.
# TODO: Write the locals block with all required values.
# TODO: Write the aws_instance resource with a nested ebs_block_device block and proper tags.
# TODO: Use all three comment styles at least once.


terraform {
  required_version = ">= 1.7.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.5"
    }
  }
}

provider "aws" {
  region = "us-east-1" //Not sure if this order of the blocks is correct
}

locals {
  env                   = "test"
  string_var            = "this is a string-${local.env}"
  number_var            = 45
  bool_var              = true
  delete_on_termination = true
  list_var              = ["1", "2", "3", 4, true]
  map_var = {
    string_var = local.string_var
    number_var = local.number_var
    bool_var   = local.bool_var
  } #I think heredoc does not need "" lets see
  common_tags = {
    Environment = "${local.env}"
    Project     = "test-${local.number_var}"
    ManagedBy   = "Terraform"
  }
  heredoc = <<EOF
        this is a heredoc
        this is used for multi line comments
        Hope this works
        EOF

}

resource "aws_instance" "test" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"
  ebs_block_device {
    device_name           = "/dev/sdh"
    volume_type           = "gp2"
    volume_size           = 8
    delete_on_termination = local.delete_on_termination
    encrypted             = true
  }
  tags = merge(local.common_tags, {
    Name = "Hello"
  })
}


/*terrafrom colud be the best way to learn AWS as I need to keep things in my mind 
here I have to use volume type, I know there are three but I do not remember them 
so If I keep this up eventually I will be good 
*/