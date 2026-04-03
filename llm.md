# LLM Handoff File — Terraform Mastery

This file gives any LLM full context to continue Yashas's Terraform learning journey exactly where it left off.

---

## About the Student

- **Name:** Yashas
- **Portfolio:** https://www.yashas-dev.com
- **Goal:** Become a DevOps Engineer. Master Terraform to compete with and beat LLMs.
- **AWS Certifications:** Solutions Architect Associate, Cloud Practitioner
- **Current Terraform Level:** Beginner (has written basic provider + resource blocks once)
- **AWS CLI:** Configured and ready. Real AWS resources will be provisioned.

---

## Learning Structure

Each tier follows this exact flow:
1. Teach the concept clearly
2. Give ~10 tasks for that concept (hands-on, in the terminal/editor)
3. Move to the next concept
4. After ALL concepts in a tier are done → do the tier projects
5. Then move to the next tier

**Do NOT skip steps. Do NOT rush to projects before all concepts are done.**

---

## Curriculum

### BEGINNER — 5 concepts, 50 tasks, 2 projects
Concepts: HCL Syntax, Providers, Resources, Terraform CLI, State Files
Projects: EC2 + Security Group / S3 Bucket with versioning

### INTERMEDIATE — 10 concepts, 100 tasks, 2 projects
Concepts: Variables, Outputs, Locals, Data Sources, count & for_each, Modules, Remote State, Workspaces, Built-in Functions, Meta-arguments
Projects: Multi-env VPC / Reusable EC2 Module

### ADVANCED — 10 concepts, 100 tasks, 2 projects
Concepts: Dynamic Blocks, Provisioners, null_resource, terraform import, Complex Expressions, moved blocks, terraform_remote_state, Debugging, Resource Targeting, check blocks
Projects: 3-Tier Architecture / Serverless Stack

### ULTRA — 10 concepts, 100 tasks, 2 projects
Concepts: CI/CD + GitHub Actions, Atlantis/Terraform Cloud, Policy as Code, Terragrunt, Multi-account/region, Terratest, Infracost, Drift Detection, Secrets Management, Module Registry
Projects: Full GitOps Pipeline / Multi-Account AWS Org

### GOD — 10 concepts, 100 tasks, 2 projects
Concepts: Terraform Internals (DAG), Custom Provider Dev (Go), CDKTF, State Surgery, Performance at Scale, Enterprise Module Design, Reverse Engineering LLM Output, Security Hardening, Schema Design, Open Source
Projects: Custom Terraform Provider / Enterprise IaC Framework

---

## Current Progress

Check `roadmap.md` for up-to-date numbers.
Check each tier's `.md` file for task-level checkboxes.

### Where Yashas is right now

- **Tier:** Beginner
- **Concept:** 3 — Resources (in progress)
- **Last completed task:** Task 3.5 — Attribute references
- **Next task:** Task 3.6 — In-place vs. replacement (apply a bucket, change tags, change bucket name, observe plan symbols)
- **Tasks done in Resources so far:** 3.1, 3.2, 3.3, 3.4, 3.5

### Common mistakes to watch for
- Typo: `Environament` instead of `Environment` in tag keys
- Using `aws_S3_bucket` (capital S) instead of `aws_s3_bucket`
- Using hyphens in resource labels instead of underscores (e.g. `add-versioning` → `add_versioning`)
- Putting `versioning_configuration` inside `aws_s3_bucket` instead of `aws_s3_bucket_versioning`
- Typo: `terraform plain` instead of `terraform plan`

### Provider/version info
- AWS provider: `~> 6.0` (currently installs v6.36.0)
- `required_version = ">= 1.7.0"` (Terraform CLI v1.7.5)
- Default region: `ap-south-1`

---

## File Structure

```
Learn Terraform/
├── roadmap.md           # Progress tracker (source of truth)
├── llm.md               # This file
├── beginner/
│   ├── beginner.md      # Concepts + task checkboxes + projects
│   ├── tasks/           # Task files go here
│   └── projects/        # Project code goes here
├── intermediate/
│   ├── intermediate.md
│   ├── tasks/
│   └── projects/
├── advanced/
│   ├── advanced.md
│   ├── tasks/
│   └── projects/
├── ultra/
│   ├── ultra.md
│   ├── tasks/
│   └── projects/
└── god/
    ├── god.md
    ├── tasks/
    └── projects/
```

---

## Rules for the LLM

1. Always check `roadmap.md` first to know where Yashas is.
2. Check the current tier's `.md` file to see which concept and task he's on.
3. Teach one concept at a time. Don't dump everything at once.
4. Tasks must be hands-on — actual Terraform code, real AWS resources.
5. After tasks for a concept are done, update the checkboxes in the tier `.md`.
6. After all concepts in a tier are done, move to projects.
7. After projects are done, update `roadmap.md` and move to the next tier.
8. Never skip ahead. Never simplify beyond what's needed.
9. The end goal is for Yashas to be able to write and review Terraform better than an LLM — keep that bar high.
