# Terraform Style Guide

Follow this in every task and project. No exceptions.
This is the standard that separates engineers from scripters.

---

## File Naming

| File            | Purpose                                      |
|-----------------|----------------------------------------------|
| `main.tf`       | Core resources                               |
| `variables.tf`  | All input variable declarations              |
| `outputs.tf`    | All output declarations                      |
| `locals.tf`     | All local values                             |
| `providers.tf`  | Provider and terraform block configuration   |
| `data.tf`       | All data source blocks                       |
| `versions.tf`   | Required providers and Terraform version     |

Never dump everything into one file. Split by responsibility.

---

## Naming Conventions

### Resources
- Use `snake_case` always
- Name should describe what it is, not what type it is
- The resource type already says what it is — don't repeat it

```hcl
# Bad
resource "aws_instance" "aws_instance_web_server" {}
resource "aws_s3_bucket" "s3Bucket" {}

# Good
resource "aws_instance" "web" {}
resource "aws_s3_bucket" "assets" {}
```

### Variables
- `snake_case`
- Be descriptive — avoid `var1`, `name`, `value`

```hcl
# Bad
variable "n" {}
variable "sg" {}

# Good
variable "instance_name" {}
variable "security_group_ids" {}
```

### Outputs
- `snake_case`
- Prefix with what it belongs to for clarity

```hcl
# Good
output "vpc_id" {}
output "web_instance_public_ip" {}
```

### Locals
- `snake_case`
- Use for computed values and repeated expressions

```hcl
locals {
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
```

---

## Formatting Rules

- Always run `terraform fmt` before saving — non-negotiable
- 2-space indentation (Terraform default, `fmt` handles this)
- One blank line between blocks
- Align `=` signs within a block for readability

```hcl
# Bad
resource "aws_instance" "web" {
  ami="ami-0c55b159cbfafe1f0"
  instance_type="t2.micro"
  tags={Name="web"}
}

# Good
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = local.common_tags
}
```

---

## Tagging

Tag every resource. Always. No exceptions.

```hcl
tags = merge(local.common_tags, {
  Name = "web-server"
})
```

Minimum required tags:
- `Name`
- `Environment`
- `Project`
- `ManagedBy = "Terraform"`

---

## Variables

Always define:
- `description` — what is this variable for
- `type` — never leave it untyped
- `default` only when it makes sense (don't default everything)

```hcl
variable "instance_type" {
  description = "EC2 instance type for the web server"
  type        = string
  default     = "t2.micro"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}
```

---

## Outputs

Always include a `description`.

```hcl
output "instance_public_ip" {
  description = "Public IP of the web server EC2 instance"
  value       = aws_instance.web.public_ip
}
```

---

## Provider Block

Always pin provider versions. Never use an unpinned provider in real code.

```hcl
terraform {
  required_version = ">= 1.7.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}
```

---

## Comments

Use comments to explain *why*, not *what*. The code shows what. You explain why.

```hcl
# Bad
# Create an S3 bucket
resource "aws_s3_bucket" "assets" { ... }

# Good
# Public read blocked at bucket level — ACLs handled via bucket policy instead
resource "aws_s3_bucket_public_access_block" "assets" { ... }
```

---

## State

- Never edit `.tfstate` manually — ever
- Never commit `.tfstate` to git
- Always use remote state for anything beyond local experimentation
- Always use DynamoDB locking with S3 backend

---

## .gitignore

Every Terraform project must have this:

```
.terraform/
*.tfstate
*.tfstate.backup
*.tfvars
.terraform.lock.hcl   # commit this only if working in a team
crash.log
override.tf
```

---

## General Rules

1. `terraform fmt` — always, before anything
2. `terraform validate` — always, before `plan`
3. `terraform plan` — always, before `apply`
4. Never use `terraform apply -auto-approve` unless in a CI pipeline
5. Destroy what you build in tasks — don't leave AWS resources running
6. One resource per file is too granular. One concern per file is correct.
