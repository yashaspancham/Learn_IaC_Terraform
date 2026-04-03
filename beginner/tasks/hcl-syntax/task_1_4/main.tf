# Topic: HCL Syntax — Heredoc strings (Task 1.4)
#
# Concept:
#   Heredoc syntax lets you write multi-line strings cleanly.
#   Commonly used for JSON policies, shell scripts, or any long string.
#
# Syntax:
#   variable_name = <<EOF
#   line one
#   line two
#   EOF
#
#   The delimiter (EOF) can be any word. It must match exactly at the closing line.
#   Use <<-EOF (with a dash) to allow indented closing delimiter.
#
# Example:
#   locals {
#     note = <<EOF
#   Hello
#   World
#   EOF
#   }
#
# Task:
#   Write a locals block with a heredoc that contains a multi-line JSON string
#   (you can use a minimal IAM-style JSON policy as the content).
#
#   Run: terraform init && terraform console
#   Evaluate the local to see the heredoc output.
#
# Commands:
#   terraform init
#   terraform console

# TODO: Write a locals block with a heredoc multi-line string.


locals {
  heredoc = <<EOF
        {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "s3:ListBucket",
        "s3:GetObject"
      ],
      "Resource": [
        "arn:aws:s3:::my-bucket-name",
        "arn:aws:s3:::my-bucket-name/*"
      ]
    }
  ]
}
EOF
}