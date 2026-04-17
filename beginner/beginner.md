# Beginner Tier

## Status: 🔄 In Progress

---

## Concepts & Tasks

### 1. HCL Syntax — blocks, arguments, expressions

- [x] Task 1: Write a `.tf` file with a single `terraform {}` block and no resources. Run `terraform init`. Observe what gets created.
- [x] Task 2: Write a block with string, number, and bool arguments. Use `terraform console` to evaluate each type.
- [x] Task 3: Write a block that uses a reference expression — e.g., one argument references another value using `${}` interpolation.
- [x] Task 4: Write a multi-line string using a heredoc (`<<EOF`). Print it with `terraform console`.
- [x] Task 5: Write a list argument and a map argument. Access specific elements using index and key notation in `terraform console`.
- [x] Task 6: Write a nested block (a block inside a block). Use `aws_instance` with an `ebs_block_device` nested block as the example — don't apply, just write and validate.
- [x] Task 7: Write a file with a deliberate formatting error (inconsistent spacing, missing alignment). Run `terraform fmt` and observe what it fixes.
- [x] Task 8: Write a file with a syntax error (missing quote, unclosed brace). Run `terraform validate` and read the error output carefully.
- [x] Task 9: Write three different comment styles in HCL: `#`, `//`, and `/* */`. Confirm all three are valid with `terraform validate`.
- [x] Task 10: Write a `.tf` file that combines all of the above: nested blocks, string interpolation, a map, a list, and proper formatting. Run `fmt` and `validate` until it passes clean.

---

### 2. Providers — configuration, versioning, authentication

- [x] Task 1: Write a `providers.tf` with the AWS provider block. Pin it to `~> 6.0`. Run `terraform init` and inspect the `.terraform/` directory.
- [x] Task 2: Set the `region` argument on the AWS provider using a hardcoded string. Run `terraform init` and `terraform validate`.
- [x] Task 3: Check your AWS CLI credentials with `aws sts get-caller-identity`. Confirm Terraform can use them by running `terraform plan` against a simple resource.
- [x] Task 4: Add a `required_version` constraint to the `terraform {}` block. Set it to `>= 1.7.0`. Run `terraform validate`.
- [x] Task 5: Write a `versions.tf` that separates the `terraform {}` block from `providers.tf`. Run `init` — confirm both files are picked up.
- [x] Task 6: Add a second provider alias — e.g., `provider "aws" { alias = "us_east" region = "us-east-1" }`. Write a resource that uses `provider = aws.us_east`. Validate only, don't apply.
- [x] Task 7: Intentionally break the version constraint (set `required_version = "= 0.12.0"`). Run `terraform init` and read the error. Restore to a valid version.
- [x] Task 8: Remove the `version` pin from `required_providers`. Run `terraform init`. Check `.terraform.lock.hcl` — what version did it pick? Re-add the pin.
- [x] Task 9: Inspect `.terraform.lock.hcl` after a successful `init`. Understand what `version`, `constraints`, and `hashes` mean in that file.
- [x] Task 10: Write a complete `providers.tf` + `versions.tf` that follows the style guide exactly: pinned version, `required_version`, region from a variable. Validate clean.

---

### 3. Resources — declaration, attributes, references

- [x] Task 1: Write a `main.tf` that declares an `aws_s3_bucket` resource with a unique name and tags. Run `plan` — read the output carefully.
- [x] Task 2: Apply the S3 bucket from Task 1. Verify it exists in the AWS console. Then destroy it.
- [x] Task 3: Write an `aws_s3_bucket_versioning` resource. Reference the bucket from Task 1 using `aws_s3_bucket.<name>.id`. Apply, verify, destroy.
- [x] Task 4: Write two resources where one depends on the other — use an explicit `depends_on` argument. Observe the plan output to confirm ordering.
- [x] Task 5: Write a resource and reference one of its attributes in another argument within the same file (e.g., use `aws_s3_bucket.main.bucket` as the bucket name in a policy resource).
- [x] Task 6: Apply a resource, then change one of its arguments. Run `plan` — identify which changes are in-place updates vs. forces replacement. Read the diff carefully.
- [x] Task 7: Write a resource with an incorrect argument name. Run `validate` — read the error. Fix it.
- [x] Task 8: Write an `aws_s3_bucket` with a `lifecycle` meta-argument: `prevent_destroy = true`. Attempt `terraform destroy` — observe what happens. Remove the lifecycle block and destroy.
- [x] Task 9: Write two completely independent resources in the same `main.tf`. Run `plan` — observe that Terraform can create them in parallel (note `Plan:` output).
- [x] Task 10: Write a full resource configuration for an `aws_security_group` with multiple `ingress` and `egress` nested blocks. Apply, verify in console, destroy.

---

### 4. Terraform CLI — init, plan, apply, destroy, fmt, validate

- [x] Task 1: Run `terraform init` in a directory with no `.tf` files. Read the output and understand what it's doing (or not doing).
- [x] Task 2: Run `terraform fmt -recursive` on a directory with poorly formatted files. Observe which files were changed.
- [x] Task 3: Run `terraform validate` on a valid config. Then introduce an error and run it again. Compare the outputs.
- [x] Task 4: Run `terraform plan` and save the output to a file using `-out=tfplan`. Inspect the file with `terraform show tfplan`.
- [x] Task 5: Apply using a saved plan file: `terraform apply tfplan`. Understand why this is safer than `terraform apply` directly.
- [x] Task 6: Run `terraform plan -target=aws_s3_bucket.main` on a config with multiple resources. Observe that only the targeted resource is planned.
- [x] Task 7: Run `terraform apply` with the `-var` flag to pass a variable inline. Verify it overrides any default.
- [x] Task 8: Run `terraform destroy` on a config with two resources. Observe the destruction order — Terraform respects dependency graphs in reverse.
- [ ] Task 9: Run `terraform output` after an apply with defined outputs. Then run `terraform output <output_name>` to get a single value.
- [ ] Task 10: Run `terraform version`. Then run `terraform providers`. Understand what each command tells you and when you'd use them.

---

### 5. State Files — what .tfstate is, why it matters

- [ ] Task 1: Apply a simple resource (e.g., S3 bucket). Open `terraform.tfstate` in a text editor. Find your resource in the JSON — understand the structure.
- [ ] Task 2: Run `terraform state list` after an apply. Understand what it shows.
- [ ] Task 3: Run `terraform state show aws_s3_bucket.<name>` — read the attribute output. Compare it to your `.tf` file.
- [ ] Task 4: Manually delete a resource from AWS (via console). Run `terraform plan` — observe that Terraform detects drift and plans to recreate it.
- [ ] Task 5: Run `terraform state rm aws_s3_bucket.<name>` on an existing resource. Run `plan` — Terraform no longer knows about it. Understand what this means.
- [ ] Task 6: Re-import the resource from Task 5 using `terraform import aws_s3_bucket.<name> <bucket-name>`. Run `plan` and confirm it's back in state.
- [ ] Task 7: Add a `.gitignore` to your project directory following the style guide. Confirm `.tfstate` and `.terraform/` are excluded.
- [ ] Task 8: Apply a resource, then rename it in your `.tf` file (change the resource label). Run `plan` — observe that Terraform wants to destroy + recreate. Understand why.
- [ ] Task 9: Run `terraform refresh` (or `terraform apply -refresh-only`) and understand what it does vs. a regular plan.
- [ ] Task 10: Write a short `notes.md` in your tasks directory explaining: what `.tfstate` is, why you never edit it manually, and why you never commit it. This is a concept check, not a coding task.

---

## Projects

### Project 1: EC2 + Security Group
- [ ] Deploy an EC2 instance with a Security Group from scratch
- [ ] Location: `projects/01-ec2-security-group/`

### Project 2: S3 Bucket
- [ ] Create an S3 bucket with versioning and tags
- [ ] Location: `projects/02-s3-bucket/`

---

## Notes
