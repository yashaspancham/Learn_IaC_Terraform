# Topic: Resources — Security Group (Task 3.10)
#
# Concept:
#   An aws_security_group uses nested ingress and egress blocks to define
#   inbound and outbound traffic rules. Each block is a separate rule.
#   This is a good example of multiple nested blocks in a single resource.
#
# Syntax:
#   resource "aws_security_group" "web" {
#     name        = "web-sg"
#     description = "Allow HTTP and SSH inbound"
#     vpc_id      = "vpc-xxxxxxxx"
#
#     ingress {
#       from_port   = 80
#       to_port     = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#
#     egress {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#     }
#   }
#
# Task:
#   Write an aws_security_group with:
#   - At least 2 ingress rules (e.g. port 80 HTTP, port 22 SSH)
#   - At least 1 egress rule (allow all outbound)
#   - Required tags
#
#   You will need your default VPC id — get it from the AWS console or:
#     aws ec2 describe-vpcs --filters "Name=isDefault,Values=true" --query "Vpcs[0].VpcId" --output text
#
#   Run: terraform apply, verify in AWS console (EC2 → Security Groups), then destroy.
#
# Commands:
#   terraform init
#   terraform apply
#   terraform destroy

# TODO: Write an aws_security_group with multiple ingress and egress nested blocks.
#       Apply, verify in console, destroy.

resource "aws_security_group" "data_in_out" {
  name        = "data-in-out-sg"
  description = "Allow HTTP and SSH inbound and all outbound"
  vpc_id      = "vpc-dummy-value"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "data-in-out-sg"
    Environment = "learn"
    Project     = "learn-terraform"
    ManagedBy   = "terraform"
  }
}