# Learn Terraform: The Journey to Mastery

A structured, high-intensity learning path designed to achieve **Terraform mastery** and surpass LLM-level infrastructure code generation. This repository tracks progress through granular tasks, real AWS deployments, and a tiered roadmap from Beginner to God.

## The Goal

To master Terraform's syntax, internals, and ecosystem to a degree where human-written infrastructure code consistently outperforms LLM-generated output in correctness, structure, and production readiness.

## Project Structure

- **`roadmap.md`** — Tiered progress tracker (Beginner → God)
- **`beginner/`** — HCL Syntax, Providers, Resources, CLI, State Files
- **`intermediate/`** — Variables, Outputs, Locals, Modules, Remote State, and more
- **`advanced/`** — Dynamic Blocks, Provisioners, Import, Debugging, and more
- **`ultra/`** — CI/CD, Terragrunt, Policy as Code, Multi-account, Terratest
- **`god/`** — Custom Providers, CDKTF, State Surgery, Enterprise Module Design
- **`style-guide.md`** — Mandatory standards for all Terraform code in this repo

## Workflow

1. **LLM Role** — Provides concept documentation, syntax reference, and `# TODO` requirements
2. **Strict Constraint** — No boilerplate or pre-written solutions provided
3. **User Role** — Writes every line of Terraform from scratch, adhering to the style guide
4. **Validation** — Every task must pass `terraform fmt` and `terraform validate` before it's marked done

## Coding Standards

All code follows `style-guide.md`:

- **File separation** — `main.tf`, `variables.tf`, `outputs.tf`, `providers.tf`, `versions.tf`
- **snake_case** — for all resource names, variables, outputs, and locals
- **Pinned provider versions** — always, no exceptions
- **Tags on every resource** — `Name`, `Environment`, `Project`, `ManagedBy = "Terraform"`
- **`terraform fmt`** — before every save
- **`terraform validate`** — before every plan
- **Never commit `.tfstate`** — never edit it manually

## Current Status

- **Current Tier:** Beginner
- **Active Concept:** Resources
- **Active Task:** 3.6 — In-place vs. replacement

## Progress

| Section         | Status      | Tasks     |
|-----------------|-------------|-----------|
| 1. HCL Syntax   | Complete    | 10/10     |
| 2. Providers    | Complete    | 10/10     |
| 3. Resources    | In Progress | 5/10      |
| 4. CLI          | Not Started | 0/10      |
| 5. State Files  | Not Started | 0/10      |

## AWS

Real AWS resources are provisioned throughout this course. All task resources are destroyed immediately after verification. Remote state with S3 + DynamoDB locking is introduced at the Intermediate tier.
