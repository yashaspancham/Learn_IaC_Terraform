# Topic: Terraform CLI — terraform fmt -recursive (Task 4.2)
#
# Concept:
#   `terraform fmt` reformats .tf files to the canonical HCL style.
#   By default it only formats files in the current directory.
#   The `-recursive` flag tells it to also format files in subdirectories.
#
#   It does NOT validate logic — only whitespace, indentation, and alignment.
#   It prints the names of files it changed. If nothing needed fixing, no output.
#
# What fmt fixes:
#   - Inconsistent indentation (uses 2 spaces)
#   - Misaligned `=` signs in argument blocks
#   - Extra or missing blank lines between blocks
#   - Trailing whitespace
#
# Task:
#   This directory has two subdirectories with poorly formatted .tf files.
#   Your job is to run `terraform fmt -recursive` from THIS directory and
#   observe which files get fixed.
#
#   The files are intentionally broken — do NOT fix them manually first.
#
# Steps:
#   1. Look at the files in subdir_a/ and subdir_b/ — notice the bad formatting.
#   2. From this directory (task_4_2/), run:
#        terraform fmt -recursive
#   3. Read the output — which files were listed?
#   4. Open the files again — what changed?
#   5. Write your observations at the bottom of this file.
#
# Commands:
#   terraform fmt -recursive
#   (compare files before and after using your editor or `cat`)
#
# Questions to answer:
#   - Which files were listed in the output?
#   - What specifically changed in each file?
#   - Was notes.md affected? Why not?
#   - What does it mean if fmt produces no output at all?

# YOUR OBSERVATIONS:
# (write what you saw here after running the commands)
# -Both the .tf files were listed in the ouput
# -The formatting was fixed
# -No, It is not a .tf file
# -It means none of the files were affected