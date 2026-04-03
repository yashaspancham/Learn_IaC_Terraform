# Beginner Mastery Tasks

## 1. HCL Syntax
1. **[DONE] The terraform block:** Write a bare `terraform {}` block. Run `terraform init`. Observe what gets created.
2. **[DONE] Argument types:** Write a locals block with a string, number, and bool. Evaluate each in `terraform console`.
3. **[DONE] String interpolation:** Write a locals block with an interpolated value that combines two other locals.
4. **[DONE] Heredoc strings:** Write a locals block with a heredoc multi-line JSON string. Evaluate it in `terraform console`.
5. **[DONE] Lists and Maps:** Write a locals block with a list and a map. Access elements by index and key in `terraform console`.
6. **[DONE] Nested blocks:** Write an `aws_instance` resource with an `ebs_block_device` nested block. Validate only, don't apply.
7. **[DONE] terraform fmt:** Write a badly formatted locals block. Run `terraform fmt`. Observe what it fixes.
8. **[DONE] terraform validate:** Write a locals block with a deliberate syntax error. Read the error. Fix it. Validate clean.
9. **[DONE] Comments:** Write a locals block using all three comment styles: `#`, `//`, `/* */`. Validate clean.
10. **[DONE] Full recap:** Combine everything — terraform block, provider, locals (string/number/bool/list/map/interpolation/heredoc), aws_instance with nested block and tags. `fmt` and `validate` must both pass.

## 2. Providers
1. **[DONE] Provider init:** Write a `providers.tf` with the AWS provider pinned to `~> 6.0`. Run `terraform init`. Inspect `.terraform/`.
2. **[DONE] Region argument:** Set the `region` argument on the provider using a hardcoded string. Validate.
3. **[DONE] AWS auth check:** Verify Terraform can reach AWS — `aws sts get-caller-identity`, then `terraform plan` against a simple resource.
4. **[DONE] required_version:** Add a `required_version = ">= 1.7.0"` to the `terraform {}` block. Validate.
5. **[DONE] versions.tf split:** Move the `terraform {}` block into a separate `versions.tf`. Confirm `init` picks up both files.
6. **[DONE] Provider alias:** Add a second AWS provider with an alias for a different region. Write a resource that uses it. Validate only.
7. **[DONE] Broken version:** Set `required_version = "= 0.12.0"`. Run `init`. Read the error. Restore to a valid version.
8. **[DONE] Lock file:** Remove the version pin. Run `init`. Check `.terraform.lock.hcl` — what version did it pick? Re-add the pin.
9. **[DONE] Inspect lock file:** Read `.terraform.lock.hcl` after a successful `init`. Understand `version`, `constraints`, and `hashes`.
10. **[DONE] Clean providers.tf:** Write a complete `providers.tf` + `versions.tf` following the style guide. Validate clean.

## 3. Resources
1. **[DONE] S3 bucket plan:** Write an `aws_s3_bucket` with a unique name and tags. Run `plan`. Read the output.
2. **[DONE] Apply + destroy:** Apply the S3 bucket. Verify in AWS console. Then destroy it.
3. **[DONE] Resource references:** Write `aws_s3_bucket_versioning` referencing the bucket via `aws_s3_bucket.<name>.id`. Apply, verify, destroy.
4. **[DONE] depends_on:** Write two resources with an explicit `depends_on`. Read the plan output to confirm ordering.
5. **[DONE] Attribute references:** Reference one resource's attribute inside another resource in the same file.
6. **[DONE] In-place vs. replacement:** Apply a resource. Change one argument. Run `plan`. Identify what's in-place vs. forces replacement.
7. **[DONE] Invalid argument:** Write a resource with a wrong argument name. Run `validate`. Read the error. Fix it.
8. **[DONE] prevent_destroy:** Add `lifecycle { prevent_destroy = true }` to a resource. Try `destroy`. Observe. Remove it and destroy.
9. **[DONE] Parallel creation:** Write two independent resources. Run `plan`. Note Terraform can create them in parallel.
10. **[DONE] Security Group:** Write a full `aws_security_group` with multiple `ingress` and `egress` nested blocks. Apply, verify, destroy.

## 4. Terraform CLI
1. **[ ] Init empty dir:** Run `terraform init` in a directory with no `.tf` files. Read the output.
2. **[ ] fmt recursive:** Run `terraform fmt -recursive` on a directory with poorly formatted files. Observe which files changed.
3. **[ ] Validate comparison:** Run `terraform validate` on a valid config. Introduce an error. Compare both outputs.
4. **[ ] Plan to file:** Run `terraform plan -out=tfplan`. Inspect it with `terraform show tfplan`.
5. **[ ] Apply from plan:** Run `terraform apply tfplan`. Understand why this is safer than a direct apply.
6. **[ ] Plan target:** Run `terraform plan -target=<resource>` on a multi-resource config. Observe what's scoped.
7. **[ ] Inline var:** Run `terraform apply -var="key=value"`. Verify it overrides the default.
8. **[ ] Destroy order:** Run `terraform destroy` on a multi-resource config. Observe the destruction order.
9. **[ ] Output commands:** Run `terraform output` and `terraform output <name>`. Understand the difference.
10. **[ ] version + providers:** Run `terraform version` and `terraform providers`. Know what each tells you.

## 5. State Files
1. **[ ] Read tfstate:** Apply a resource. Open `terraform.tfstate`. Find your resource in the JSON.
2. **[ ] state list:** Run `terraform state list` after an apply. Understand what it shows.
3. **[ ] state show:** Run `terraform state show <resource>`. Compare the output to your `.tf` file.
4. **[ ] Drift detection:** Delete a resource from the AWS console. Run `terraform plan`. Observe drift detection.
5. **[ ] state rm:** Run `terraform state rm <resource>`. Run `plan`. Understand what Terraform no longer knows.
6. **[ ] terraform import:** Re-import the resource from Task 5 with `terraform import`. Confirm it's back in state.
7. **[ ] gitignore:** Add a `.gitignore` per the style guide. Confirm `.tfstate` and `.terraform/` are excluded.
8. **[ ] Rename drift:** Apply a resource. Rename its label in the `.tf` file. Run `plan`. Observe destroy + recreate.
9. **[ ] refresh-only:** Run `terraform apply -refresh-only`. Understand what it does vs. a regular plan.
10. **[ ] Concept check:** Write a `notes.md` explaining: what `.tfstate` is, why you never edit it manually, why you never commit it.
